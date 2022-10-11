// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartPageModel _$$_CartPageModelFromJson(Map<String, dynamic> json) =>
    _$_CartPageModel(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      searchKey: json['searchKey'] as String? ?? '',
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_CartPageModelToJson(_$_CartPageModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'searchKey': instance.searchKey,
      'masterDataDestination': instance.masterDataDestination,
    };
