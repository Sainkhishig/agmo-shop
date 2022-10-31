import 'package:freezed_annotation/freezed_annotation.dart';

part 'ld_media_model.freezed.dart';
part 'ld_media_model.g.dart';

@freezed
abstract class LdMediaModel with _$LdMediaModel {
  const factory LdMediaModel({
    @Default("") String language,
    @Default("") String title,
    @Default("") String description,
    @Default(false) bool isAutoTranslatedTitle,
    @Default(false) bool isAutoTranslatedDescription,
  }) = _LdMediaModel;
  
  factory LdMediaModel.fromJson(Map<String, dynamic> json) =>
      _$LdMediaModelFromJson(json);
}
