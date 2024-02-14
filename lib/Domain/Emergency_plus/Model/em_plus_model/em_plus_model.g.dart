// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'em_plus_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmPlusModelImpl _$$EmPlusModelImplFromJson(Map<String, dynamic> json) =>
    _$EmPlusModelImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      secondaryPhone: json['secondary_phone'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$EmPlusModelImplToJson(_$EmPlusModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'secondary_phone': instance.secondaryPhone,
      'email': instance.email,
    };
