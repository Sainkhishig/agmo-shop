// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomePageModel _$$_HomePageModelFromJson(Map<String, dynamic> json) =>
    _$_HomePageModel(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      searchKey: json['searchKey'] as String? ?? '',
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_HomePageModelToJson(_$_HomePageModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'searchKey': instance.searchKey,
      'masterDataDestination': instance.masterDataDestination,
    };
