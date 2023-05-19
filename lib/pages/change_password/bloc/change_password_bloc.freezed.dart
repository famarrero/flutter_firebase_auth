// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  /// Old password
  String get oldPassword => throw _privateConstructorUsedError;

  /// New password to change
  String get newPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        onChangePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newPassword)?
        onChangePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)?
        onChangePasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEventOnChangePasswordPressed value)
        onChangePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordEventOnChangePasswordPressed value)?
        onChangePasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEventOnChangePasswordPressed value)?
        onChangePasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordEventOnChangePasswordPressedCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory _$$_ChangePasswordEventOnChangePasswordPressedCopyWith(
          _$_ChangePasswordEventOnChangePasswordPressed value,
          $Res Function(_$_ChangePasswordEventOnChangePasswordPressed) then) =
      __$$_ChangePasswordEventOnChangePasswordPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newPassword});
}

/// @nodoc
class __$$_ChangePasswordEventOnChangePasswordPressedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$_ChangePasswordEventOnChangePasswordPressed>
    implements _$$_ChangePasswordEventOnChangePasswordPressedCopyWith<$Res> {
  __$$_ChangePasswordEventOnChangePasswordPressedCopyWithImpl(
      _$_ChangePasswordEventOnChangePasswordPressed _value,
      $Res Function(_$_ChangePasswordEventOnChangePasswordPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ChangePasswordEventOnChangePasswordPressed(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordEventOnChangePasswordPressed
    implements _ChangePasswordEventOnChangePasswordPressed {
  const _$_ChangePasswordEventOnChangePasswordPressed(
      {required this.oldPassword, required this.newPassword});

  /// Old password
  @override
  final String oldPassword;

  /// New password to change
  @override
  final String newPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.onChangePasswordPressed(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordEventOnChangePasswordPressed &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordEventOnChangePasswordPressedCopyWith<
          _$_ChangePasswordEventOnChangePasswordPressed>
      get copyWith =>
          __$$_ChangePasswordEventOnChangePasswordPressedCopyWithImpl<
              _$_ChangePasswordEventOnChangePasswordPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newPassword)
        onChangePasswordPressed,
  }) {
    return onChangePasswordPressed(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newPassword)?
        onChangePasswordPressed,
  }) {
    return onChangePasswordPressed?.call(oldPassword, newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newPassword)?
        onChangePasswordPressed,
    required TResult orElse(),
  }) {
    if (onChangePasswordPressed != null) {
      return onChangePasswordPressed(oldPassword, newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePasswordEventOnChangePasswordPressed value)
        onChangePasswordPressed,
  }) {
    return onChangePasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePasswordEventOnChangePasswordPressed value)?
        onChangePasswordPressed,
  }) {
    return onChangePasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePasswordEventOnChangePasswordPressed value)?
        onChangePasswordPressed,
    required TResult orElse(),
  }) {
    if (onChangePasswordPressed != null) {
      return onChangePasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordEventOnChangePasswordPressed
    implements ChangePasswordEvent {
  const factory _ChangePasswordEventOnChangePasswordPressed(
          {required final String oldPassword,
          required final String newPassword}) =
      _$_ChangePasswordEventOnChangePasswordPressed;

  @override

  /// Old password
  String get oldPassword;
  @override

  /// New password to change
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordEventOnChangePasswordPressedCopyWith<
          _$_ChangePasswordEventOnChangePasswordPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangePasswordState {
  /// [changePassword] state
  BaseState<bool> get changePassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call({BaseState<bool> changePassword});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changePassword = null,
  }) {
    return _then(_value.copyWith(
      changePassword: null == changePassword
          ? _value.changePassword
          : changePassword // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState<bool> changePassword});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ChangePasswordState>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? changePassword = null,
  }) {
    return _then(_$_ChangePasswordState(
      changePassword: null == changePassword
          ? _value.changePassword
          : changePassword // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState extends _ChangePasswordState {
  const _$_ChangePasswordState({required this.changePassword}) : super._();

  /// [changePassword] state
  @override
  final BaseState<bool> changePassword;

  @override
  String toString() {
    return 'ChangePasswordState(changePassword: $changePassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            (identical(other.changePassword, changePassword) ||
                other.changePassword == changePassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, changePassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState extends ChangePasswordState {
  const factory _ChangePasswordState(
      {required final BaseState<bool> changePassword}) = _$_ChangePasswordState;
  const _ChangePasswordState._() : super._();

  @override

  /// [changePassword] state
  BaseState<bool> get changePassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
