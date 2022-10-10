// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_common_page_model_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdminCommonPageModel _$$_AdminCommonPageModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdminCommonPageModel(
      title: json['title'] as String? ?? '',
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      isGameMode: json['isGameMode'] as bool? ?? false,
    );

Map<String, dynamic> _$$_AdminCommonPageModelToJson(
        _$_AdminCommonPageModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'selectedIndex': instance.selectedIndex,
      'isGameMode': instance.isGameMode,
    };
