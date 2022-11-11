// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BrandState _$$_BrandStateFromJson(Map<String, dynamic> json) =>
    _$_BrandState(
      tags: json['tags'] as List<dynamic>? ?? [],
      selectedId: json['selectedId'] as String? ?? null,
      detailData: json['detailData'] ?? null,
    );

Map<String, dynamic> _$$_BrandStateToJson(_$_BrandState instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'selectedId': instance.selectedId,
      'detailData': instance.detailData,
    };
