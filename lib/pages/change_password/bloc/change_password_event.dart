part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  /// Event for call when the user press change password button
  const factory ChangePasswordEvent.onChangePasswordPressed({
    /// Old password
    required String oldPassword,

    /// New password to change
    required String newPassword,
  }) = _ChangePasswordEventOnChangePasswordPressed;
}
