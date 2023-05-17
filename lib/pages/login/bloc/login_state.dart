part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    required BaseState<LoginStatusEnum> loginStatus,
  }) = _LoginState;

  /// Get true id the user is logged
  bool get isLogged => loginStatus.data == LoginStatusEnum.loggedIn;
}

/// Login possible states.
/// [loggedIn] when user is logged in the app.
/// [unLoggedIn] when user is not logged in the app.
enum LoginStatusEnum { authenticating, loggedIn, unLoggedIn }
