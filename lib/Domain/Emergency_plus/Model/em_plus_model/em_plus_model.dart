// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'em_plus_model.freezed.dart';
part 'em_plus_model.g.dart';

@freezed
class EmPlusModel with _$EmPlusModel {
  factory EmPlusModel({
    String? id,
    String? date,
    String? name,
    String? location,
    String? phone,
    @JsonKey(name: 'secondary_phone') String? secondaryPhone,
    String? email,
  }) = _EmPlusModel;

  factory EmPlusModel.fromJson(Map<String, dynamic> json) =>
      _$EmPlusModelFromJson(json);
}
