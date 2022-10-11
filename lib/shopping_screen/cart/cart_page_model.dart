import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_page_model.freezed.dart';
part 'cart_page_model.g.dart';

@freezed
abstract class CartPageModel with _$CartPageModel {
  const factory CartPageModel({
    @Default(0) int selectedIndex,
    @Default("") String searchKey,
    @Default("masterDate") String masterDataDestination,
  }) = _CartPageModel;
  factory CartPageModel.fromJson(Map<String, dynamic> json) =>
      _$CartPageModelFromJson(json);
}
