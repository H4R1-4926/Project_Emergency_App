// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmergencyModelImpl _$$EmergencyModelImplFromJson(Map<String, dynamic> json) =>
    _$EmergencyModelImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      name: json['name'] as String?,
      location: json['location'] as String?,
      phone: json['phone'] as String?,
      call: json['call'] as String?,
      level: json['level'] as String?,
      extra: json['extra'] as String?,
    );

Map<String, dynamic> _$$EmergencyModelImplToJson(
        _$EmergencyModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'name': instance.name,
      'location': instance.location,
      'phone': instance.phone,
      'call': instance.call,
      'level': instance.level,
      'extra': instance.extra,
    };
