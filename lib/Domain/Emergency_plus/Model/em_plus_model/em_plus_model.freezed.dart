// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'em_plus_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmPlusModel _$EmPlusModelFromJson(Map<String, dynamic> json) {
  return _EmPlusModel.fromJson(json);
}

/// @nodoc
mixin _$EmPlusModel {
  String? get id => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmPlusModelCopyWith<EmPlusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmPlusModelCopyWith<$Res> {
  factory $EmPlusModelCopyWith(
          EmPlusModel value, $Res Function(EmPlusModel) then) =
      _$EmPlusModelCopyWithImpl<$Res, EmPlusModel>;
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone,
      String? email});
}

/// @nodoc
class _$EmPlusModelCopyWithImpl<$Res, $Val extends EmPlusModel>
    implements $EmPlusModelCopyWith<$Res> {
  _$EmPlusModelCopyWithImpl(this._value, this._then);

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
    Object? secondaryPhone = freezed,
    Object? email = freezed,
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
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmPlusModelImplCopyWith<$Res>
    implements $EmPlusModelCopyWith<$Res> {
  factory _$$EmPlusModelImplCopyWith(
          _$EmPlusModelImpl value, $Res Function(_$EmPlusModelImpl) then) =
      __$$EmPlusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? date,
      String? name,
      String? location,
      String? phone,
      @JsonKey(name: 'secondary_phone') String? secondaryPhone,
      String? email});
}

/// @nodoc
class __$$EmPlusModelImplCopyWithImpl<$Res>
    extends _$EmPlusModelCopyWithImpl<$Res, _$EmPlusModelImpl>
    implements _$$EmPlusModelImplCopyWith<$Res> {
  __$$EmPlusModelImplCopyWithImpl(
      _$EmPlusModelImpl _value, $Res Function(_$EmPlusModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? phone = freezed,
    Object? secondaryPhone = freezed,
    Object? email = freezed,
  }) {
    return _then(_$EmPlusModelImpl(
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
      secondaryPhone: freezed == secondaryPhone
          ? _value.secondaryPhone
          : secondaryPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmPlusModelImpl implements _EmPlusModel {
  _$EmPlusModelImpl(
      {this.id,
      this.date,
      this.name,
      this.location,
      this.phone,
      @JsonKey(name: 'secondary_phone') this.secondaryPhone,
      this.email});

  factory _$EmPlusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmPlusModelImplFromJson(json);

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
  @JsonKey(name: 'secondary_phone')
  final String? secondaryPhone;
  @override
  final String? email;

  @override
  String toString() {
    return 'EmPlusModel(id: $id, date: $date, name: $name, location: $location, phone: $phone, secondaryPhone: $secondaryPhone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmPlusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.secondaryPhone, secondaryPhone) ||
                other.secondaryPhone == secondaryPhone) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, name, location, phone, secondaryPhone, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmPlusModelImplCopyWith<_$EmPlusModelImpl> get copyWith =>
      __$$EmPlusModelImplCopyWithImpl<_$EmPlusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmPlusModelImplToJson(
      this,
    );
  }
}

abstract class _EmPlusModel implements EmPlusModel {
  factory _EmPlusModel(
      {final String? id,
      final String? date,
      final String? name,
      final String? location,
      final String? phone,
      @JsonKey(name: 'secondary_phone') final String? secondaryPhone,
      final String? email}) = _$EmPlusModelImpl;

  factory _EmPlusModel.fromJson(Map<String, dynamic> json) =
      _$EmPlusModelImpl.fromJson;

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
  @JsonKey(name: 'secondary_phone')
  String? get secondaryPhone;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$EmPlusModelImplCopyWith<_$EmPlusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
