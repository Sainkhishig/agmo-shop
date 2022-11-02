// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemState _$$_ItemStateFromJson(Map<String, dynamic> json) => _$_ItemState(
      tags: json['tags'] as List<dynamic>? ?? [],
      selectedId: json['selectedId'] as String? ?? null,
      lstMeasure: (json['lstMeasure'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_ItemStateToJson(_$_ItemState instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'selectedId': instance.selectedId,
      'lstMeasure': instance.lstMeasure,
    };
