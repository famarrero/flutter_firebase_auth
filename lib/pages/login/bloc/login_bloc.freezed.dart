// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onLoginPressed,
    required TResult Function() onSignOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onLoginPressed,
    TResult? Function()? onSignOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onLoginPressed,
    TResult Function()? onSignOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventLoginPressed value) onLoginPressed,
    required TResult Function(_LoginEventSingOutPressed value) onSignOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult? Function(_LoginEventSingOutPressed value)? onSignOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult Function(_LoginEventSingOutPressed value)? onSignOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginEventLoginPressedCopyWith<$Res> {
  factory _$$_LoginEventLoginPressedCopyWith(_$_LoginEventLoginPressed value,
          $Res Function(_$_LoginEventLoginPressed) then) =
      __$$_LoginEventLoginPressedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginEventLoginPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEventLoginPressed>
    implements _$$_LoginEventLoginPressedCopyWith<$Res> {
  __$$_LoginEventLoginPressedCopyWithImpl(_$_LoginEventLoginPressed _value,
      $Res Function(_$_LoginEventLoginPressed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_LoginEventLoginPressed(
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

class _$_LoginEventLoginPressed implements _LoginEventLoginPressed {
  const _$_LoginEventLoginPressed(
      {required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.onLoginPressed(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventLoginPressed &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginEventLoginPressedCopyWith<_$_LoginEventLoginPressed> get copyWith =>
      __$$_LoginEventLoginPressedCopyWithImpl<_$_LoginEventLoginPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onLoginPressed,
    required TResult Function() onSignOutPressed,
  }) {
    return onLoginPressed(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onLoginPressed,
    TResult? Function()? onSignOutPressed,
  }) {
    return onLoginPressed?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onLoginPressed,
    TResult Function()? onSignOutPressed,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventLoginPressed value) onLoginPressed,
    required TResult Function(_LoginEventSingOutPressed value) onSignOutPressed,
  }) {
    return onLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult? Function(_LoginEventSingOutPressed value)? onSignOutPressed,
  }) {
    return onLoginPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult Function(_LoginEventSingOutPressed value)? onSignOutPressed,
    required TResult orElse(),
  }) {
    if (onLoginPressed != null) {
      return onLoginPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginEventLoginPressed implements LoginEvent {
  const factory _LoginEventLoginPressed(
      {required final String email,
      required final String password}) = _$_LoginEventLoginPressed;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginEventLoginPressedCopyWith<_$_LoginEventLoginPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginEventSingOutPressedCopyWith<$Res> {
  factory _$$_LoginEventSingOutPressedCopyWith(
          _$_LoginEventSingOutPressed value,
          $Res Function(_$_LoginEventSingOutPressed) then) =
      __$$_LoginEventSingOutPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginEventSingOutPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginEventSingOutPressed>
    implements _$$_LoginEventSingOutPressedCopyWith<$Res> {
  __$$_LoginEventSingOutPressedCopyWithImpl(_$_LoginEventSingOutPressed _value,
      $Res Function(_$_LoginEventSingOutPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginEventSingOutPressed implements _LoginEventSingOutPressed {
  const _$_LoginEventSingOutPressed();

  @override
  String toString() {
    return 'LoginEvent.onSignOutPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEventSingOutPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) onLoginPressed,
    required TResult Function() onSignOutPressed,
  }) {
    return onSignOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? onLoginPressed,
    TResult? Function()? onSignOutPressed,
  }) {
    return onSignOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? onLoginPressed,
    TResult Function()? onSignOutPressed,
    required TResult orElse(),
  }) {
    if (onSignOutPressed != null) {
      return onSignOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginEventLoginPressed value) onLoginPressed,
    required TResult Function(_LoginEventSingOutPressed value) onSignOutPressed,
  }) {
    return onSignOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult? Function(_LoginEventSingOutPressed value)? onSignOutPressed,
  }) {
    return onSignOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginEventLoginPressed value)? onLoginPressed,
    TResult Function(_LoginEventSingOutPressed value)? onSignOutPressed,
    required TResult orElse(),
  }) {
    if (onSignOutPressed != null) {
      return onSignOutPressed(this);
    }
    return orElse();
  }
}

abstract class _LoginEventSingOutPressed implements LoginEvent {
  const factory _LoginEventSingOutPressed() = _$_LoginEventSingOutPressed;
}

/// @nodoc
mixin _$LoginState {
  LoginStatusEnum get loginStatus => throw _privateConstructorUsedError;
  BaseState<bool> get signIn => throw _privateConstructorUsedError;
  BaseState<bool> get signOut => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginStatusEnum loginStatus,
      BaseState<bool> signIn,
      BaseState<bool> signOut});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? signIn = null,
    Object? signOut = null,
  }) {
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatusEnum,
      signIn: null == signIn
          ? _value.signIn
          : signIn // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
      signOut: null == signOut
          ? _value.signOut
          : signOut // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginStatusEnum loginStatus,
      BaseState<bool> signIn,
      BaseState<bool> signOut});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? signIn = null,
    Object? signOut = null,
  }) {
    return _then(_$_LoginState(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatusEnum,
      signIn: null == signIn
          ? _value.signIn
          : signIn // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
      signOut: null == signOut
          ? _value.signOut
          : signOut // ignore: cast_nullable_to_non_nullable
              as BaseState<bool>,
    ));
  }
}

/// @nodoc

class _$_LoginState extends _LoginState {
  const _$_LoginState(
      {required this.loginStatus, required this.signIn, required this.signOut})
      : super._();

  @override
  final LoginStatusEnum loginStatus;
  @override
  final BaseState<bool> signIn;
  @override
  final BaseState<bool> signOut;

  @override
  String toString() {
    return 'LoginState(loginStatus: $loginStatus, signIn: $signIn, signOut: $signOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.signIn, signIn) || other.signIn == signIn) &&
            (identical(other.signOut, signOut) || other.signOut == signOut));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, signIn, signOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState(
      {required final LoginStatusEnum loginStatus,
      required final BaseState<bool> signIn,
      required final BaseState<bool> signOut}) = _$_LoginState;
  const _LoginState._() : super._();

  @override
  LoginStatusEnum get loginStatus;
  @override
  BaseState<bool> get signIn;
  @override
  BaseState<bool> get signOut;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
