import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_common_page_model_.freezed.dart';
part 'admin_common_page_model_.g.dart';

@freezed
abstract class AdminCommonPageModel with _$AdminCommonPageModel {
  const factory AdminCommonPageModel({
    @Default("") String title,
    @Default(0) int selectedIndex,
    @Default(false) bool isGameMode,
  }) = _AdminCommonPageModel;
  factory AdminCommonPageModel.fromJson(Map<String, dynamic> json) =>
      _$AdminCommonPageModelFromJson(json);
}
