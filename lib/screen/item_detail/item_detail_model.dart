import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail_model.freezed.dart';
part 'item_detail_model.g.dart';

@freezed
abstract class ItemDetailModel with _$ItemDetailModel {
  const factory ItemDetailModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String brandName,
    @Default(0) int price,
    @Default(0) int salePrice,
    @Default([]) List categories,
    @Default([]) List imageLinks,
    @Default([]) List ageSex,
    @Default([]) List sizes,
    @Default("masterDate") String masterDataDestination,
  }) = _ItemDetailModel;
  factory ItemDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailModelFromJson(json);
}
