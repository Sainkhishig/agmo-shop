import 'package:freezed_annotation/freezed_annotation.dart';

part 'favourite_page_model.freezed.dart';
part 'favourite_page_model.g.dart';

@freezed
abstract class FavouritePageModel with _$FavouritePageModel {
  const factory FavouritePageModel({
    @Default(0) int selectedIndex,
    @Default("") String searchKey,
    @Default("masterDate") String masterDataDestination,
  }) = _FavouritePageModel;
  factory FavouritePageModel.fromJson(Map<String, dynamic> json) =>
      _$FavouritePageModelFromJson(json);
}
