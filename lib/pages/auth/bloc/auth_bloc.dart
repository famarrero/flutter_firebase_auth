import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:flutter_firebase_auth/utils/firebase_error_messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()
      : super(
          const AuthState(
            authStatus: AuthStatusEnum.authenticating,
            signUp: BaseState.initial(),
          ),
        ) {
    on<_AuthEventSignUpPressed>(_onAuthEventSignUpPressed);
  }

  void _onAuthEventSignUpPressed(
    _AuthEventSignUpPressed event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        signUp: state.signUp.copyWith(isLoading: true),
      ),
    );

    // await Future.delayed(const Duration(seconds: 3));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: event.email, password: event.password);

      emit(
        state.copyWith(
          signUp: const BaseState.loaded(true),
          authStatus: AuthStatusEnum.emailVerification,
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          signUp: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e.code),
            ),
          ),
          authStatus: AuthStatusEnum.authenticating,
        ),
      );
    }
  }
}
