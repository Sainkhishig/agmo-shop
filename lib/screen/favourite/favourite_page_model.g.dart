// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavouritePageModel _$$_FavouritePageModelFromJson(
        Map<String, dynamic> json) =>
    _$_FavouritePageModel(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      searchKey: json['searchKey'] as String? ?? '',
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_FavouritePageModelToJson(
        _$_FavouritePageModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'searchKey': instance.searchKey,
      'masterDataDestination': instance.masterDataDestination,
    };
