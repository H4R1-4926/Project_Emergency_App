import 'package:freezed_annotation/freezed_annotation.dart';

part 'emergency_model.freezed.dart';
part 'emergency_model.g.dart';

@freezed
class EmergencyModel with _$EmergencyModel {
  factory EmergencyModel({
    String? id,
    String? date,
    String? name,
    String? location,
    String? phone,
    String? call,
    String? level,
    String? extra,
  }) = _EmergencyModel;

  factory EmergencyModel.fromJson(Map<String, dynamic> json) =>
      _$EmergencyModelFromJson(json);
}
