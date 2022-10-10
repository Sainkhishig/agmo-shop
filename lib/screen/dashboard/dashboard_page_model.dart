import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_page_model.freezed.dart';
part 'dashboard_page_model.g.dart';

@freezed
abstract class DashboardPageModel with _$DashboardPageModel {
  const factory DashboardPageModel({
    @Default(0) int selectedIndex,
    @Default("") String searchKey,
    @Default("masterDate") String masterDataDestination,
  }) = _DashboardPageModel;
  factory DashboardPageModel.fromJson(Map<String, dynamic> json) =>
      _$DashboardPageModelFromJson(json);
}
