// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'radio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RadioEvent {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) radioButton,
    required TResult Function(String value) radioButtonLvl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? radioButton,
    TResult? Function(String value)? radioButtonLvl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? radioButton,
    TResult Function(String value)? radioButtonLvl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioButton value) radioButton,
    required TResult Function(RadioButtonlvl value) radioButtonLvl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioButton value)? radioButton,
    TResult? Function(RadioButtonlvl value)? radioButtonLvl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioButton value)? radioButton,
    TResult Function(RadioButtonlvl value)? radioButtonLvl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioEventCopyWith<RadioEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioEventCopyWith<$Res> {
  factory $RadioEventCopyWith(
          RadioEvent value, $Res Function(RadioEvent) then) =
      _$RadioEventCopyWithImpl<$Res, RadioEvent>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$RadioEventCopyWithImpl<$Res, $Val extends RadioEvent>
    implements $RadioEventCopyWith<$Res> {
  _$RadioEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioButtonImplCopyWith<$Res>
    implements $RadioEventCopyWith<$Res> {
  factory _$$RadioButtonImplCopyWith(
          _$RadioButtonImpl value, $Res Function(_$RadioButtonImpl) then) =
      __$$RadioButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$RadioButtonImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$RadioButtonImpl>
    implements _$$RadioButtonImplCopyWith<$Res> {
  __$$RadioButtonImplCopyWithImpl(
      _$RadioButtonImpl _value, $Res Function(_$RadioButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RadioButtonImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioButtonImpl implements RadioButton {
  const _$RadioButtonImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'RadioEvent.radioButton(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioButtonImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioButtonImplCopyWith<_$RadioButtonImpl> get copyWith =>
      __$$RadioButtonImplCopyWithImpl<_$RadioButtonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) radioButton,
    required TResult Function(String value) radioButtonLvl,
  }) {
    return radioButton(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? radioButton,
    TResult? Function(String value)? radioButtonLvl,
  }) {
    return radioButton?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? radioButton,
    TResult Function(String value)? radioButtonLvl,
    required TResult orElse(),
  }) {
    if (radioButton != null) {
      return radioButton(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioButton value) radioButton,
    required TResult Function(RadioButtonlvl value) radioButtonLvl,
  }) {
    return radioButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioButton value)? radioButton,
    TResult? Function(RadioButtonlvl value)? radioButtonLvl,
  }) {
    return radioButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioButton value)? radioButton,
    TResult Function(RadioButtonlvl value)? radioButtonLvl,
    required TResult orElse(),
  }) {
    if (radioButton != null) {
      return radioButton(this);
    }
    return orElse();
  }
}

abstract class RadioButton implements RadioEvent {
  const factory RadioButton({required final String value}) = _$RadioButtonImpl;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$RadioButtonImplCopyWith<_$RadioButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioButtonlvlImplCopyWith<$Res>
    implements $RadioEventCopyWith<$Res> {
  factory _$$RadioButtonlvlImplCopyWith(_$RadioButtonlvlImpl value,
          $Res Function(_$RadioButtonlvlImpl) then) =
      __$$RadioButtonlvlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$RadioButtonlvlImplCopyWithImpl<$Res>
    extends _$RadioEventCopyWithImpl<$Res, _$RadioButtonlvlImpl>
    implements _$$RadioButtonlvlImplCopyWith<$Res> {
  __$$RadioButtonlvlImplCopyWithImpl(
      _$RadioButtonlvlImpl _value, $Res Function(_$RadioButtonlvlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$RadioButtonlvlImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioButtonlvlImpl implements RadioButtonlvl {
  const _$RadioButtonlvlImpl({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'RadioEvent.radioButtonLvl(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioButtonlvlImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioButtonlvlImplCopyWith<_$RadioButtonlvlImpl> get copyWith =>
      __$$RadioButtonlvlImplCopyWithImpl<_$RadioButtonlvlImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) radioButton,
    required TResult Function(String value) radioButtonLvl,
  }) {
    return radioButtonLvl(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value)? radioButton,
    TResult? Function(String value)? radioButtonLvl,
  }) {
    return radioButtonLvl?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? radioButton,
    TResult Function(String value)? radioButtonLvl,
    required TResult orElse(),
  }) {
    if (radioButtonLvl != null) {
      return radioButtonLvl(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RadioButton value) radioButton,
    required TResult Function(RadioButtonlvl value) radioButtonLvl,
  }) {
    return radioButtonLvl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RadioButton value)? radioButton,
    TResult? Function(RadioButtonlvl value)? radioButtonLvl,
  }) {
    return radioButtonLvl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RadioButton value)? radioButton,
    TResult Function(RadioButtonlvl value)? radioButtonLvl,
    required TResult orElse(),
  }) {
    if (radioButtonLvl != null) {
      return radioButtonLvl(this);
    }
    return orElse();
  }
}

abstract class RadioButtonlvl implements RadioEvent {
  const factory RadioButtonlvl({required final String value}) =
      _$RadioButtonlvlImpl;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$RadioButtonlvlImplCopyWith<_$RadioButtonlvlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RadioState {
  String get value => throw _privateConstructorUsedError;
  String get lvlValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioStateCopyWith<RadioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioStateCopyWith<$Res> {
  factory $RadioStateCopyWith(
          RadioState value, $Res Function(RadioState) then) =
      _$RadioStateCopyWithImpl<$Res, RadioState>;
  @useResult
  $Res call({String value, String lvlValue});
}

/// @nodoc
class _$RadioStateCopyWithImpl<$Res, $Val extends RadioState>
    implements $RadioStateCopyWith<$Res> {
  _$RadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? lvlValue = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      lvlValue: null == lvlValue
          ? _value.lvlValue
          : lvlValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RadioStateImplCopyWith<$Res>
    implements $RadioStateCopyWith<$Res> {
  factory _$$RadioStateImplCopyWith(
          _$RadioStateImpl value, $Res Function(_$RadioStateImpl) then) =
      __$$RadioStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String lvlValue});
}

/// @nodoc
class __$$RadioStateImplCopyWithImpl<$Res>
    extends _$RadioStateCopyWithImpl<$Res, _$RadioStateImpl>
    implements _$$RadioStateImplCopyWith<$Res> {
  __$$RadioStateImplCopyWithImpl(
      _$RadioStateImpl _value, $Res Function(_$RadioStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? lvlValue = null,
  }) {
    return _then(_$RadioStateImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      lvlValue: null == lvlValue
          ? _value.lvlValue
          : lvlValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RadioStateImpl implements _RadioState {
  const _$RadioStateImpl({required this.value, required this.lvlValue});

  @override
  final String value;
  @override
  final String lvlValue;

  @override
  String toString() {
    return 'RadioState(value: $value, lvlValue: $lvlValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioStateImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.lvlValue, lvlValue) ||
                other.lvlValue == lvlValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, lvlValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioStateImplCopyWith<_$RadioStateImpl> get copyWith =>
      __$$RadioStateImplCopyWithImpl<_$RadioStateImpl>(this, _$identity);
}

abstract class _RadioState implements RadioState {
  const factory _RadioState(
      {required final String value,
      required final String lvlValue}) = _$RadioStateImpl;

  @override
  String get value;
  @override
  String get lvlValue;
  @override
  @JsonKey(ignore: true)
  _$$RadioStateImplCopyWith<_$RadioStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
