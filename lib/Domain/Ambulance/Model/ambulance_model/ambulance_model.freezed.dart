// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ambulance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AmbulanceModel _$AmbulanceModelFromJson(Map<String, dynamic> json) {
  return _AmbulanceModel.fromJson(json);
}

/// @nodoc
mixin _$AmbulanceModel {
  String? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get extra => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmbulanceModelCopyWith<AmbulanceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmbulanceModelCopyWith<$Res> {
  factory $AmbulanceModelCopyWith(
          AmbulanceModel value, $Res Function(AmbulanceModel) then) =
      _$AmbulanceModelCopyWithImpl<$Res, AmbulanceModel>;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      String? extra});
}

/// @nodoc
class _$AmbulanceModelCopyWithImpl<$Res, $Val extends AmbulanceModel>
    implements $AmbulanceModelCopyWith<$Res> {
  _$AmbulanceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmbulanceModelImplCopyWith<$Res>
    implements $AmbulanceModelCopyWith<$Res> {
  factory _$$AmbulanceModelImplCopyWith(_$AmbulanceModelImpl value,
          $Res Function(_$AmbulanceModelImpl) then) =
      __$$AmbulanceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      String? extra});
}

/// @nodoc
class __$$AmbulanceModelImplCopyWithImpl<$Res>
    extends _$AmbulanceModelCopyWithImpl<$Res, _$AmbulanceModelImpl>
    implements _$$AmbulanceModelImplCopyWith<$Res> {
  __$$AmbulanceModelImplCopyWithImpl(
      _$AmbulanceModelImpl _value, $Res Function(_$AmbulanceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? extra = freezed,
  }) {
    return _then(_$AmbulanceModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      extra: freezed == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmbulanceModelImpl implements _AmbulanceModel {
  _$AmbulanceModelImpl(
      {this.id, this.date, this.name, this.location, this.phone, this.extra});

  factory _$AmbulanceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmbulanceModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? date;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? phone;
  @override
  final String? extra;

  @override
  String toString() {
    return 'AmbulanceModel(id: $id, date: $date, name: $name, location: $location, phone: $phone, extra: $extra)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmbulanceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, name, location, phone, extra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmbulanceModelImplCopyWith<_$AmbulanceModelImpl> get copyWith =>
      __$$AmbulanceModelImplCopyWithImpl<_$AmbulanceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmbulanceModelImplToJson(
      this,
    );
  }
}

abstract class _AmbulanceModel implements AmbulanceModel {
  factory _AmbulanceModel(
      {final String? id,
      final String? date,
      final String? name,
      final String? location,
      final String? phone,
      final String? extra}) = _$AmbulanceModelImpl;

  factory _AmbulanceModel.fromJson(Map<String, dynamic> json) =
      _$AmbulanceModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get date;
  @override
  String? get name;
  @override
  String? get location;
  @override
  String? get phone;
  @override
  String? get extra;
  @override
  @JsonKey(ignore: true)
  _$$AmbulanceModelImplCopyWith<_$AmbulanceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
