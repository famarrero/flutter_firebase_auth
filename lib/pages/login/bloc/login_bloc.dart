import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(
          const LoginState(
            loginStatus: BaseState.loaded(LoginStatusEnum.unLoggedIn),
          ),
        ) {
    on<_LoginEventLoginPressed>(_onLoginEventLoginPressed);
    on<_LoginEventSingOutPressed>(_onLoginEventSingOutPressed);
  }

  void _onLoginEventLoginPressed(
    _LoginEventLoginPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        loginStatus: state.loginStatus.copyWith(isLoading: true),
      ),
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );

      emit(
        state.copyWith(
          loginStatus: const BaseState.loaded(LoginStatusEnum.loggedIn),
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          loginStatus: BaseState.fail(
            FirebaseFailure(e.message),
          ),
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
        loginStatus: state.loginStatus.copyWith(isLoading: true),
      ),
    );

    try {
      await FirebaseAuth.instance.signOut();
      emit(
        state.copyWith(
          loginStatus: const BaseState.loaded(LoginStatusEnum.unLoggedIn),
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          loginStatus: BaseState.fail(
            FirebaseFailure(e.message),
          ),
        ),
      );
    }
  }
}
