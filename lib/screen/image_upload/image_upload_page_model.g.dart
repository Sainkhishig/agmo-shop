// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_upload_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ImageUploadPageModel _$$_ImageUploadPageModelFromJson(
        Map<String, dynamic> json) =>
    _$_ImageUploadPageModel(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      searchKey: json['searchKey'] as String? ?? '',
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_ImageUploadPageModelToJson(
        _$_ImageUploadPageModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'searchKey': instance.searchKey,
      'masterDataDestination': instance.masterDataDestination,
    };
