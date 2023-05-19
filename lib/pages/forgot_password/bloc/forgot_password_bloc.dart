import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase_auth/utils/base_state.dart';
import 'package:flutter_firebase_auth/utils/failures.dart';
import 'package:flutter_firebase_auth/utils/firebase_error_messages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgetPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgetPasswordBloc()
      : super(const ForgotPasswordState(
          sendEmail: BaseState.initial(),
        )) {
    on<_ForgotPasswordEventSendEmailPressed>(
        _onForgotPasswordEventSendEmailPressed);
  }

  void _onForgotPasswordEventSendEmailPressed(
    _ForgotPasswordEventSendEmailPressed event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    emit(
      state.copyWith(
        sendEmail: state.sendEmail.copyWith(isLoading: true),
      ),
    );

    // await Future.delayed(const Duration(seconds: 3));

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: event.email,
      );

      emit(
        state.copyWith(
          sendEmail: const BaseState.loaded(true),
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          sendEmail: BaseState.fail(
            FirebaseFailure(
              getFirebaseErrorMessageByErrorCode(e),
            ),
          ),
        ),
      );
    }
  }
}
