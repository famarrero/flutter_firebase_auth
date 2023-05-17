part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.onSingUpPressed({
    required String email,
    required String password,
  }) = _AuthEventSignUpPressed;

  const factory AuthEvent.onSendEmailVerification() = _AuthEventSendEmailVerification;

  const factory AuthEvent.onEmailVerified({
    required bool emailVerified,
  }) = _AuthEventEmailVerified;
}
