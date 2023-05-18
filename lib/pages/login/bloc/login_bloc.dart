import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:flutter_firebase_auth/utils/firebase_error_messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc()
      : super(const LoginState(
          loginStatus: LoginStatusEnum.unLoggedIn,
          googleSignUp: BaseState.initial(),
          signIn: BaseState.initial(),
          signOut: BaseState.initial(),
        )) {
    on<_LoginEventGoogleSignUpPressed>(_onLoginEventGoogleSignUpPressed);
    on<_LoginEventLoginPressed>(_onLoginEventLoginPressed);
    on<_LoginEventSingOutPressed>(_onLoginEventSingOutPressed);
    on<_LoginEventStatusChange>(_onLoginEventStatusChange);
  }

  Future<void> _onLoginEventGoogleSignUpPressed(
    _LoginEventGoogleSignUpPressed event,
    Emitter<LoginState> emit,
  ) async {
    emit(
      state.copyWith(
        googleSignUp: state.googleSignUp.copyWith(isLoading: true),
      ),
    );

    try {
      final googleSignIn = GoogleSignIn();
      final googleUser = await googleSignIn.signIn();

      if (googleUser == null) return;

      final googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);

      emit(
        state.copyWith(
          googleSignUp: const BaseState.loaded(true),
          loginStatus: LoginStatusEnum.loggedIn,
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          googleSignUp: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e.code),
            ),
          ),
          loginStatus: LoginStatusEnum.unLoggedIn,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          googleSignUp: BaseState.fail(UnexpectedFailure(e.toString())),
          loginStatus: LoginStatusEnum.unLoggedIn,
        ),
      );
    }
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
