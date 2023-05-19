part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const ChangePasswordState._();

  const factory ChangePasswordState({
    /// [changePassword] state
    required BaseState<bool> changePassword,
  }) = _ChangePasswordState;
}
