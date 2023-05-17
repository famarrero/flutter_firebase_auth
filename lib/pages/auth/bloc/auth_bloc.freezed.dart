// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSingUpPressed,
    required TResult Function() sendEmailVerification,
    required TResult Function() onEmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSingUpPressed,
    TResult? Function()? sendEmailVerification,
    TResult? Function()? onEmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSingUpPressed,
    TResult Function()? sendEmailVerification,
    TResult Function()? onEmailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventSignUpPressed value) onSingUpPressed,
    required TResult Function(_AuthEventSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_AuthEventOnEmailVerified value) onEmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult? Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(_AuthEventOnEmailVerified value)? onEmailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(_AuthEventOnEmailVerified value)? onEmailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthEventSignUpPressedCopyWith<$Res> {
  factory _$$_AuthEventSignUpPressedCopyWith(_$_AuthEventSignUpPressed value,
          $Res Function(_$_AuthEventSignUpPressed) then) =
      __$$_AuthEventSignUpPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthEventSignUpPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventSignUpPressed>
    implements _$$_AuthEventSignUpPressedCopyWith<$Res> {
  __$$_AuthEventSignUpPressedCopyWithImpl(_$_AuthEventSignUpPressed _value,
      $Res Function(_$_AuthEventSignUpPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthEventSignUpPressed(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthEventSignUpPressed implements _AuthEventSignUpPressed {
  const _$_AuthEventSignUpPressed(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.onSingUpPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventSignUpPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthEventSignUpPressedCopyWith<_$_AuthEventSignUpPressed> get copyWith =>
      __$$_AuthEventSignUpPressedCopyWithImpl<_$_AuthEventSignUpPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSingUpPressed,
    required TResult Function() sendEmailVerification,
    required TResult Function() onEmailVerified,
  }) {
    return onSingUpPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSingUpPressed,
    TResult? Function()? sendEmailVerification,
    TResult? Function()? onEmailVerified,
  }) {
    return onSingUpPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSingUpPressed,
    TResult Function()? sendEmailVerification,
    TResult Function()? onEmailVerified,
    required TResult orElse(),
  }) {
    if (onSingUpPressed != null) {
      return onSingUpPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventSignUpPressed value) onSingUpPressed,
    required TResult Function(_AuthEventSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_AuthEventOnEmailVerified value) onEmailVerified,
  }) {
    return onSingUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult? Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(_AuthEventOnEmailVerified value)? onEmailVerified,
  }) {
    return onSingUpPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(_AuthEventOnEmailVerified value)? onEmailVerified,
    required TResult orElse(),
  }) {
    if (onSingUpPressed != null) {
      return onSingUpPressed(this);
    }
    return orElse();
  }
}

abstract class _AuthEventSignUpPressed implements AuthEvent {
  const factory _AuthEventSignUpPressed(
      {required final String email,
      required final String password}) = _$_AuthEventSignUpPressed;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_AuthEventSignUpPressedCopyWith<_$_AuthEventSignUpPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthEventSendEmailVerificationCopyWith<$Res> {
  factory _$$_AuthEventSendEmailVerificationCopyWith(
          _$_AuthEventSendEmailVerification value,
          $Res Function(_$_AuthEventSendEmailVerification) then) =
      __$$_AuthEventSendEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventSendEmailVerificationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventSendEmailVerification>
    implements _$$_AuthEventSendEmailVerificationCopyWith<$Res> {
  __$$_AuthEventSendEmailVerificationCopyWithImpl(
      _$_AuthEventSendEmailVerification _value,
      $Res Function(_$_AuthEventSendEmailVerification) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventSendEmailVerification
    implements _AuthEventSendEmailVerification {
  const _$_AuthEventSendEmailVerification();

  @override
  String toString() {
    return 'AuthEvent.sendEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventSendEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSingUpPressed,
    required TResult Function() sendEmailVerification,
    required TResult Function() onEmailVerified,
  }) {
    return sendEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSingUpPressed,
    TResult? Function()? sendEmailVerification,
    TResult? Function()? onEmailVerified,
  }) {
    return sendEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSingUpPressed,
    TResult Function()? sendEmailVerification,
    TResult Function()? onEmailVerified,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventSignUpPressed value) onSingUpPressed,
    required TResult Function(_AuthEventSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_AuthEventOnEmailVerified value) onEmailVerified,
  }) {
    return sendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult? Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(_AuthEventOnEmailVerified value)? onEmailVerified,
  }) {
    return sendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(_AuthEventOnEmailVerified value)? onEmailVerified,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _AuthEventSendEmailVerification implements AuthEvent {
  const factory _AuthEventSendEmailVerification() =
      _$_AuthEventSendEmailVerification;
}

/// @nodoc
abstract class _$$_AuthEventOnEmailVerifiedCopyWith<$Res> {
  factory _$$_AuthEventOnEmailVerifiedCopyWith(
          _$_AuthEventOnEmailVerified value,
          $Res Function(_$_AuthEventOnEmailVerified) then) =
      __$$_AuthEventOnEmailVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthEventOnEmailVerifiedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_AuthEventOnEmailVerified>
    implements _$$_AuthEventOnEmailVerifiedCopyWith<$Res> {
  __$$_AuthEventOnEmailVerifiedCopyWithImpl(_$_AuthEventOnEmailVerified _value,
      $Res Function(_$_AuthEventOnEmailVerified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthEventOnEmailVerified implements _AuthEventOnEmailVerified {
  const _$_AuthEventOnEmailVerified();

  @override
  String toString() {
    return 'AuthEvent.onEmailVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthEventOnEmailVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onSingUpPressed,
    required TResult Function() sendEmailVerification,
    required TResult Function() onEmailVerified,
  }) {
    return onEmailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onSingUpPressed,
    TResult? Function()? sendEmailVerification,
    TResult? Function()? onEmailVerified,
  }) {
    return onEmailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onSingUpPressed,
    TResult Function()? sendEmailVerification,
    TResult Function()? onEmailVerified,
    required TResult orElse(),
  }) {
    if (onEmailVerified != null) {
      return onEmailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthEventSignUpPressed value) onSingUpPressed,
    required TResult Function(_AuthEventSendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_AuthEventOnEmailVerified value) onEmailVerified,
  }) {
    return onEmailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult? Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult? Function(_AuthEventOnEmailVerified value)? onEmailVerified,
  }) {
    return onEmailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthEventSignUpPressed value)? onSingUpPressed,
    TResult Function(_AuthEventSendEmailVerification value)?
        sendEmailVerification,
    TResult Function(_AuthEventOnEmailVerified value)? onEmailVerified,
    required TResult orElse(),
  }) {
    if (onEmailVerified != null) {
      return onEmailVerified(this);
    }
    return orElse();
  }
}

abstract class _AuthEventOnEmailVerified implements AuthEvent {
  const factory _AuthEventOnEmailVerified() = _$_AuthEventOnEmailVerified;
}

/// @nodoc
mixin _$AuthState {
  AuthStatusEnum get authStatus => throw _privateConstructorUsedError;
  BaseState<bool> get signUp => throw _privateConstructorUsedError;
  BaseState<bool> get sendEmailVerification =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatusEnum authStatus,
      BaseState<bool> signUp,
      BaseState<bool> sendEmailVerification});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? signUp = null,
    Object? sendEmailVerification = null,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatusEnum,
      signUp: null == signUp
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
      sendEmailVerification: null == sendEmailVerification
          ? _value.sendEmailVerification
          : sendEmailVerification // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatusEnum authStatus,
      BaseState<bool> signUp,
      BaseState<bool> sendEmailVerification});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? signUp = null,
    Object? sendEmailVerification = null,
  }) {
    return _then(_$_AuthState(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatusEnum,
      signUp: null == signUp
          ? _value.signUp
          : signUp // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
      sendEmailVerification: null == sendEmailVerification
          ? _value.sendEmailVerification
          : sendEmailVerification // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.authStatus,
      required this.signUp,
      required this.sendEmailVerification})
      : super._();

  @override
  final AuthStatusEnum authStatus;
  @override
  final BaseState<bool> signUp;
  @override
  final BaseState<bool> sendEmailVerification;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, signUp: $signUp, sendEmailVerification: $sendEmailVerification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.signUp, signUp) || other.signUp == signUp) &&
            (identical(other.sendEmailVerification, sendEmailVerification) ||
                other.sendEmailVerification == sendEmailVerification));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authStatus, signUp, sendEmailVerification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final AuthStatusEnum authStatus,
      required final BaseState<bool> signUp,
      required final BaseState<bool> sendEmailVerification}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  AuthStatusEnum get authStatus;
  @override
  BaseState<bool> get signUp;
  @override
  BaseState<bool> get sendEmailVerification;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
