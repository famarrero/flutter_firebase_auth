part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    required LoginStatusEnum loginStatus,
    required BaseState<bool> googleSignUp,
    required BaseState<bool> signIn,
    required BaseState<bool> signOut,
  }) = _LoginState;

  /// Get true id the user is logged
  bool get isLogged => loginStatus == LoginStatusEnum.loggedIn;
}

/// Login possible states.
/// [loggedIn] when user is logged in the app.
/// [unLoggedIn] when user is not logged in the app.
enum LoginStatusEnum { loggedIn, unLoggedIn }
