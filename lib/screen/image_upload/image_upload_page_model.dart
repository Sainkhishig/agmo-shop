import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_upload_page_model.freezed.dart';
part 'image_upload_page_model.g.dart';

@freezed
abstract class ImageUploadPageModel with _$ImageUploadPageModel {
  const factory ImageUploadPageModel({
    @Default(0) int selectedIndex,
    @Default("") String searchKey,
    @Default("masterDate") String masterDataDestination,
  }) = _ImageUploadPageModel;
  factory ImageUploadPageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageUploadPageModelFromJson(json);
}
