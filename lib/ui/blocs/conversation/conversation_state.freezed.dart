// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conversation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageDto> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ConversationStateData value) $default, {
    required TResult Function(ConversationStateLoading value) loading,
    required TResult Function(ConversationStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationStateCopyWith<$Res> {
  factory $ConversationStateCopyWith(
          ConversationState value, $Res Function(ConversationState) then) =
      _$ConversationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConversationStateCopyWithImpl<$Res>
    implements $ConversationStateCopyWith<$Res> {
  _$ConversationStateCopyWithImpl(this._value, this._then);

  final ConversationState _value;
  // ignore: unused_field
  final $Res Function(ConversationState) _then;
}

/// @nodoc
abstract class _$$ConversationStateDataCopyWith<$Res> {
  factory _$$ConversationStateDataCopyWith(_$ConversationStateData value,
          $Res Function(_$ConversationStateData) then) =
      __$$ConversationStateDataCopyWithImpl<$Res>;
  $Res call({List<MessageDto> messages});
}

/// @nodoc
class __$$ConversationStateDataCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements _$$ConversationStateDataCopyWith<$Res> {
  __$$ConversationStateDataCopyWithImpl(_$ConversationStateData _value,
      $Res Function(_$ConversationStateData) _then)
      : super(_value, (v) => _then(v as _$ConversationStateData));

  @override
  _$ConversationStateData get _value => super._value as _$ConversationStateData;

  @override
  $Res call({
    Object? messages = freezed,
  }) {
    return _then(_$ConversationStateData(
      messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>,
    ));
  }
}

/// @nodoc

class _$ConversationStateData implements ConversationStateData {
  const _$ConversationStateData(final List<MessageDto> messages)
      : _messages = messages;

  final List<MessageDto> _messages;
  @override
  List<MessageDto> get messages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ConversationState(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationStateData &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$ConversationStateDataCopyWith<_$ConversationStateData> get copyWith =>
      __$$ConversationStateDataCopyWithImpl<_$ConversationStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageDto> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return $default?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ConversationStateData value) $default, {
    required TResult Function(ConversationStateLoading value) loading,
    required TResult Function(ConversationStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ConversationStateData implements ConversationState {
  const factory ConversationStateData(final List<MessageDto> messages) =
      _$ConversationStateData;

  List<MessageDto> get messages => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ConversationStateDataCopyWith<_$ConversationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConversationStateLoadingCopyWith<$Res> {
  factory _$$ConversationStateLoadingCopyWith(_$ConversationStateLoading value,
          $Res Function(_$ConversationStateLoading) then) =
      __$$ConversationStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConversationStateLoadingCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements _$$ConversationStateLoadingCopyWith<$Res> {
  __$$ConversationStateLoadingCopyWithImpl(_$ConversationStateLoading _value,
      $Res Function(_$ConversationStateLoading) _then)
      : super(_value, (v) => _then(v as _$ConversationStateLoading));

  @override
  _$ConversationStateLoading get _value =>
      super._value as _$ConversationStateLoading;
}

/// @nodoc

class _$ConversationStateLoading implements ConversationStateLoading {
  const _$ConversationStateLoading();

  @override
  String toString() {
    return 'ConversationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageDto> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ConversationStateData value) $default, {
    required TResult Function(ConversationStateLoading value) loading,
    required TResult Function(ConversationStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ConversationStateLoading implements ConversationState {
  const factory ConversationStateLoading() = _$ConversationStateLoading;
}

/// @nodoc
abstract class _$$ConversationStateErrorCopyWith<$Res> {
  factory _$$ConversationStateErrorCopyWith(_$ConversationStateError value,
          $Res Function(_$ConversationStateError) then) =
      __$$ConversationStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$ConversationStateErrorCopyWithImpl<$Res>
    extends _$ConversationStateCopyWithImpl<$Res>
    implements _$$ConversationStateErrorCopyWith<$Res> {
  __$$ConversationStateErrorCopyWithImpl(_$ConversationStateError _value,
      $Res Function(_$ConversationStateError) _then)
      : super(_value, (v) => _then(v as _$ConversationStateError));

  @override
  _$ConversationStateError get _value =>
      super._value as _$ConversationStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ConversationStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ConversationStateError implements ConversationStateError {
  const _$ConversationStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'ConversationState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$ConversationStateErrorCopyWith<_$ConversationStateError> get copyWith =>
      __$$ConversationStateErrorCopyWithImpl<_$ConversationStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<MessageDto> messages) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<MessageDto> messages)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ConversationStateData value) $default, {
    required TResult Function(ConversationStateLoading value) loading,
    required TResult Function(ConversationStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ConversationStateData value)? $default, {
    TResult Function(ConversationStateLoading value)? loading,
    TResult Function(ConversationStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ConversationStateError implements ConversationState {
  const factory ConversationStateError(final dynamic error) =
      _$ConversationStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ConversationStateErrorCopyWith<_$ConversationStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
