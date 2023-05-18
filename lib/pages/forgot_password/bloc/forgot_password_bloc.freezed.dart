// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onSendEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onSendEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onSendEmailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordEventSendEmailPressed value)
        onSendEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordEventSendEmailPressed value)?
        onSendEmailPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordEventSendEmailPressed value)?
        onSendEmailPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordEventCopyWith<ForgotPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordEventSendEmailPressedCopyWith<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  factory _$$_ForgotPasswordEventSendEmailPressedCopyWith(
          _$_ForgotPasswordEventSendEmailPressed value,
          $Res Function(_$_ForgotPasswordEventSendEmailPressed) then) =
      __$$_ForgotPasswordEventSendEmailPressedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_ForgotPasswordEventSendEmailPressedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res,
        _$_ForgotPasswordEventSendEmailPressed>
    implements _$$_ForgotPasswordEventSendEmailPressedCopyWith<$Res> {
  __$$_ForgotPasswordEventSendEmailPressedCopyWithImpl(
      _$_ForgotPasswordEventSendEmailPressed _value,
      $Res Function(_$_ForgotPasswordEventSendEmailPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_ForgotPasswordEventSendEmailPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordEventSendEmailPressed
    implements _ForgotPasswordEventSendEmailPressed {
  const _$_ForgotPasswordEventSendEmailPressed({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.onSendEmailPressed(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordEventSendEmailPressed &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordEventSendEmailPressedCopyWith<
          _$_ForgotPasswordEventSendEmailPressed>
      get copyWith => __$$_ForgotPasswordEventSendEmailPressedCopyWithImpl<
          _$_ForgotPasswordEventSendEmailPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) onSendEmailPressed,
  }) {
    return onSendEmailPressed(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? onSendEmailPressed,
  }) {
    return onSendEmailPressed?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? onSendEmailPressed,
    required TResult orElse(),
  }) {
    if (onSendEmailPressed != null) {
      return onSendEmailPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ForgotPasswordEventSendEmailPressed value)
        onSendEmailPressed,
  }) {
    return onSendEmailPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ForgotPasswordEventSendEmailPressed value)?
        onSendEmailPressed,
  }) {
    return onSendEmailPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ForgotPasswordEventSendEmailPressed value)?
        onSendEmailPressed,
    required TResult orElse(),
  }) {
    if (onSendEmailPressed != null) {
      return onSendEmailPressed(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordEventSendEmailPressed
    implements ForgotPasswordEvent {
  const factory _ForgotPasswordEventSendEmailPressed(
      {required final String email}) = _$_ForgotPasswordEventSendEmailPressed;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordEventSendEmailPressedCopyWith<
          _$_ForgotPasswordEventSendEmailPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForgotPasswordState {
  BaseState<bool> get sendEmail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call({BaseState<bool> sendEmail});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendEmail = null,
  }) {
    return _then(_value.copyWith(
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BaseState<bool> sendEmail});
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$_ForgotPasswordState>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendEmail = null,
  }) {
    return _then(_$_ForgotPasswordState(
      sendEmail: null == sendEmail
          ? _value.sendEmail
          : sendEmail // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState extends _ForgotPasswordState {
  const _$_ForgotPasswordState({required this.sendEmail}) : super._();

  @override
  final BaseState<bool> sendEmail;

  @override
  String toString() {
    return 'ForgotPasswordState(sendEmail: $sendEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            (identical(other.sendEmail, sendEmail) ||
                other.sendEmail == sendEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState extends ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final BaseState<bool> sendEmail}) = _$_ForgotPasswordState;
  const _ForgotPasswordState._() : super._();

  @override
  BaseState<bool> get sendEmail;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
