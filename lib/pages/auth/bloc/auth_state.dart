part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    required AuthStatusEnum authStatus,  
    required BaseState<bool> signUp,
  }) = _AuthState; 

}

/// Auth possible states.
/// [authenticating] when user is in the Auth view.
/// [emailVerification] when user is in email verification view.
enum AuthStatusEnum { authenticating, emailVerification }
