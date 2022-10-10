// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDetailModel _$$_ItemDetailModelFromJson(Map<String, dynamic> json) =>
    _$_ItemDetailModel(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String? ?? '',
      brandName: json['brandName'] as String? ?? '',
      price: json['price'] as int? ?? 0,
      salePrice: json['salePrice'] as int? ?? 0,
      categories: json['categories'] as List<dynamic>? ?? [],
      imageLinks: json['imageLinks'] as List<dynamic>? ?? [],
      ageSex: json['ageSex'] as List<dynamic>? ?? [],
      sizes: json['sizes'] as List<dynamic>? ?? [],
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_ItemDetailModelToJson(_$_ItemDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brandName': instance.brandName,
      'price': instance.price,
      'salePrice': instance.salePrice,
      'categories': instance.categories,
      'imageLinks': instance.imageLinks,
      'ageSex': instance.ageSex,
      'sizes': instance.sizes,
      'masterDataDestination': instance.masterDataDestination,
    };
