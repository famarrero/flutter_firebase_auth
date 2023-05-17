part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onLoginPressed({
    required String email,
    required String password,
  }) = _LoginEventLoginPressed;

  const factory LoginEvent.onSignOutPressed() = _LoginEventSingOutPressed;
}
