// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LottieEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LottieEventCopyWith<$Res> {
  factory $LottieEventCopyWith(
          LottieEvent value, $Res Function(LottieEvent) then) =
      _$LottieEventCopyWithImpl<$Res, LottieEvent>;
}

/// @nodoc
class _$LottieEventCopyWithImpl<$Res, $Val extends LottieEvent>
    implements $LottieEventCopyWith<$Res> {
  _$LottieEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LottieEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LottieEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LottieEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$LottieState {
  bool get isstarted => throw _privateConstructorUsedError;
  bool get isended => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LottieStateCopyWith<LottieState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LottieStateCopyWith<$Res> {
  factory $LottieStateCopyWith(
          LottieState value, $Res Function(LottieState) then) =
      _$LottieStateCopyWithImpl<$Res, LottieState>;
  @useResult
  $Res call({bool isstarted, bool isended});
}

/// @nodoc
class _$LottieStateCopyWithImpl<$Res, $Val extends LottieState>
    implements $LottieStateCopyWith<$Res> {
  _$LottieStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isstarted = null,
    Object? isended = null,
  }) {
    return _then(_value.copyWith(
      isstarted: null == isstarted
          ? _value.isstarted
          : isstarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isended: null == isended
          ? _value.isended
          : isended // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LottieStateImplCopyWith<$Res>
    implements $LottieStateCopyWith<$Res> {
  factory _$$LottieStateImplCopyWith(
          _$LottieStateImpl value, $Res Function(_$LottieStateImpl) then) =
      __$$LottieStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isstarted, bool isended});
}

/// @nodoc
class __$$LottieStateImplCopyWithImpl<$Res>
    extends _$LottieStateCopyWithImpl<$Res, _$LottieStateImpl>
    implements _$$LottieStateImplCopyWith<$Res> {
  __$$LottieStateImplCopyWithImpl(
      _$LottieStateImpl _value, $Res Function(_$LottieStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isstarted = null,
    Object? isended = null,
  }) {
    return _then(_$LottieStateImpl(
      isstarted: null == isstarted
          ? _value.isstarted
          : isstarted // ignore: cast_nullable_to_non_nullable
              as bool,
      isended: null == isended
          ? _value.isended
          : isended // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LottieStateImpl implements _LottieState {
  const _$LottieStateImpl({required this.isstarted, required this.isended});

  @override
  final bool isstarted;
  @override
  final bool isended;

  @override
  String toString() {
    return 'LottieState(isstarted: $isstarted, isended: $isended)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LottieStateImpl &&
            (identical(other.isstarted, isstarted) ||
                other.isstarted == isstarted) &&
            (identical(other.isended, isended) || other.isended == isended));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isstarted, isended);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LottieStateImplCopyWith<_$LottieStateImpl> get copyWith =>
      __$$LottieStateImplCopyWithImpl<_$LottieStateImpl>(this, _$identity);
}

abstract class _LottieState implements LottieState {
  const factory _LottieState(
      {required final bool isstarted,
      required final bool isended}) = _$LottieStateImpl;

  @override
  bool get isstarted;
  @override
  bool get isended;
  @override
  @JsonKey(ignore: true)
  _$$LottieStateImplCopyWith<_$LottieStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
