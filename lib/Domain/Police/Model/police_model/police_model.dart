import 'package:freezed_annotation/freezed_annotation.dart';

part 'police_model.freezed.dart';
part 'police_model.g.dart';

@freezed
class PoliceModel with _$PoliceModel {
  factory PoliceModel({
    String? id,
    String? name,
    String? location,
    String? phone,
    String? extra,
    String? date,
  }) = _PoliceModel;

  factory PoliceModel.fromJson(Map<String, dynamic> json) =>
      _$PoliceModelFromJson(json);
}
