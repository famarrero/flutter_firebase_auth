part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onGoogleSignUpPressed() =
      _LoginEventGoogleSignUpPressed;

  const factory LoginEvent.onLoginPressed({
    required String email,
    required String password,
  }) = _LoginEventLoginPressed;

  const factory LoginEvent.onSignOutPressed() = _LoginEventSingOutPressed;

  const factory LoginEvent.onLoginStatusChange(
      {required LoginStatusEnum loginStatusEnum}) = _LoginEventStatusChange;
}
