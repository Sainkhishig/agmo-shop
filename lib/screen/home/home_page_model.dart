import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_model.freezed.dart';
part 'home_page_model.g.dart';

@freezed
abstract class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    @Default(0) int selectedIndex,
    @Default("") String searchKey,
    @Default("masterDate") String masterDataDestination,
  }) = _HomePageModel;
  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}
