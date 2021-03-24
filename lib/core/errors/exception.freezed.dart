// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CustomExceptionTearOff {
  const _$CustomExceptionTearOff();

  ServerException serverException() {
    return const ServerException();
  }

  NetworkException networkException() {
    return const NetworkException();
  }

  InvalidInputException invalidInputException() {
    return const InvalidInputException();
  }
}

/// @nodoc
const $CustomException = _$CustomExceptionTearOff();

/// @nodoc
mixin _$CustomException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionCopyWith<$Res> {
  factory $CustomExceptionCopyWith(
          CustomException value, $Res Function(CustomException) then) =
      _$CustomExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._value, this._then);

  final CustomException _value;
  // ignore: unused_field
  final $Res Function(CustomException) _then;
}

/// @nodoc
abstract class $ServerExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(
          ServerException value, $Res Function(ServerException) then) =
      _$ServerExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(
      ServerException _value, $Res Function(ServerException) _then)
      : super(_value, (v) => _then(v as ServerException));

  @override
  ServerException get _value => super._value as ServerException;
}

/// @nodoc
class _$ServerException implements ServerException {
  const _$ServerException();

  @override
  String toString() {
    return 'CustomException.serverException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
  }) {
    return serverException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException implements CustomException {
  const factory ServerException() = _$ServerException;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(
      NetworkException _value, $Res Function(NetworkException) _then)
      : super(_value, (v) => _then(v as NetworkException));

  @override
  NetworkException get _value => super._value as NetworkException;
}

/// @nodoc
class _$NetworkException implements NetworkException {
  const _$NetworkException();

  @override
  String toString() {
    return 'CustomException.networkException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NetworkException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
  }) {
    return networkException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
  }) {
    return networkException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    required TResult orElse(),
  }) {
    if (networkException != null) {
      return networkException(this);
    }
    return orElse();
  }
}

abstract class NetworkException implements CustomException {
  const factory NetworkException() = _$NetworkException;
}

/// @nodoc
abstract class $InvalidInputExceptionCopyWith<$Res> {
  factory $InvalidInputExceptionCopyWith(InvalidInputException value,
          $Res Function(InvalidInputException) then) =
      _$InvalidInputExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidInputExceptionCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res>
    implements $InvalidInputExceptionCopyWith<$Res> {
  _$InvalidInputExceptionCopyWithImpl(
      InvalidInputException _value, $Res Function(InvalidInputException) _then)
      : super(_value, (v) => _then(v as InvalidInputException));

  @override
  InvalidInputException get _value => super._value as InvalidInputException;
}

/// @nodoc
class _$InvalidInputException implements InvalidInputException {
  const _$InvalidInputException();

  @override
  String toString() {
    return 'CustomException.invalidInputException()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidInputException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverException,
    required TResult Function() networkException,
    required TResult Function() invalidInputException,
  }) {
    return invalidInputException();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverException,
    TResult Function()? networkException,
    TResult Function()? invalidInputException,
    required TResult orElse(),
  }) {
    if (invalidInputException != null) {
      return invalidInputException();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException value) serverException,
    required TResult Function(NetworkException value) networkException,
    required TResult Function(InvalidInputException value)
        invalidInputException,
  }) {
    return invalidInputException(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException value)? serverException,
    TResult Function(NetworkException value)? networkException,
    TResult Function(InvalidInputException value)? invalidInputException,
    required TResult orElse(),
  }) {
    if (invalidInputException != null) {
      return invalidInputException(this);
    }
    return orElse();
  }
}

abstract class InvalidInputException implements CustomException {
  const factory InvalidInputException() = _$InvalidInputException;
}
