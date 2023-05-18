part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const ForgotPasswordState._();

  const factory ForgotPasswordState({
    required BaseState<bool> sendEmail,
  }) = _ForgotPasswordState; 


}