import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:flutter_firebase_auth/utils/firebase_error_messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(
          loginStatus: LoginStatusEnum.unLoggedIn,
          signIn: BaseState.initial(),
          signOut: BaseState.initial(),
        )) {
    on<_LoginEventLoginPressed>(_onLoginEventLoginPressed);
    on<_LoginEventSingOutPressed>(_onLoginEventSingOutPressed);
    on<_LoginEventStatusChange>(_onLoginEventStatusChange);
  }

  void _onLoginEventLoginPressed(
    _LoginEventLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        signIn: state.signIn.copyWith(isLoading: true),
      ),
    );

    // await Future.delayed(const Duration(seconds: 3));

    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      if (userCredential.user?.emailVerified == true) {
        emit(
          state.copyWith(
            signIn: const BaseState.loaded(true),
            loginStatus: LoginStatusEnum.loggedIn,
          ),
        );
      } else {
        emit(
          state.copyWith(
            signIn: const BaseState.fail(
              FirebaseFailure(
                'This account has not been verified yet',
              ),
            ),
            loginStatus: LoginStatusEnum.unLoggedIn,
          ),
        );
      }
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          signIn: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e.code),
            ),
          ),
          loginStatus: LoginStatusEnum.unLoggedIn,
        ),
      );
    }
  }

  void _onLoginEventSingOutPressed(
    _LoginEventSingOutPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        signOut: state.signOut.copyWith(isLoading: true),
      ),
    );

    // await Future.delayed(const Duration(seconds: 3));

    try {
      await FirebaseAuth.instance.signOut();
      emit(
        state.copyWith(
          signOut: const BaseState.loaded(true),
          loginStatus: LoginStatusEnum.unLoggedIn,
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          signOut: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e.code),
            ),
          ),
          loginStatus: LoginStatusEnum.loggedIn,
        ),
      );
    }
  }

  void _onLoginEventStatusChange(
    _LoginEventStatusChange event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        signOut: const BaseState.loaded(true),
        loginStatus: event.loginStatusEnum,
      ),
    );
  }
}
