import 'package:freezed_annotation/freezed_annotation.dart';

part 'sos_model.freezed.dart';
part 'sos_model.g.dart';

@freezed
class SosModel with _$SosModel {
  factory SosModel({
    String? id,
    String? date,
    String? name,
    String? location,
    String? phone,
    String? call,
    String? extra,
  }) = _SosModel;

  factory SosModel.fromJson(Map<String, dynamic> json) =>
      _$SosModelFromJson(json);
}
