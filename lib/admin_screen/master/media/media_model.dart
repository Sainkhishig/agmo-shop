import 'package:freezed_annotation/freezed_annotation.dart';

import 'ld_media_model.dart';

part 'media_model.freezed.dart';
part 'media_model.g.dart';

@freezed
abstract class MediaModel with _$MediaModel {
  const MediaModel._();

  const factory MediaModel({
    @Default("") String fileName,
    @Default("") String facilityId,
    @Default("") String categoryId,
    @Default(false) bool isPublic,
    @Default(null) int? displayOrder,
    @Default("") String createdBy,
    @Default("") String createdDate,
    @Default("") String lastModifiedBy,
    @Default("") String lastModifiedDate,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}
