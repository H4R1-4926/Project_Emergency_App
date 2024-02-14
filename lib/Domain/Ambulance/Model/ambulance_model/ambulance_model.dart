import 'package:freezed_annotation/freezed_annotation.dart';

part 'ambulance_model.freezed.dart';
part 'ambulance_model.g.dart';

@freezed
class AmbulanceModel with _$AmbulanceModel {
  factory AmbulanceModel({
    String? id,
    String? date,
    String? name,
    String? location,
    String? phone,
    String? extra,
  }) = _AmbulanceModel;

  factory AmbulanceModel.fromJson(Map<String, dynamic> json) =>
      _$AmbulanceModelFromJson(json);
}
