// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pyfm150_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pyfm150Model _$$_Pyfm150ModelFromJson(Map<String, dynamic> json) =>
    _$_Pyfm150Model(
      type: $enumDecodeNullable(_$MediaTypeEnumMap, json['type']) ??
          MediaType.all,
      tags: (json['tags'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$FilterTagEnumMap, e))
              .toList() ??
          [],
      resultList: (json['resultList'] as List<dynamic>?)
              ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      selectedFileName: json['selectedFileName'] as String? ?? null,
      searchStatus:
          $enumDecodeNullable(_$SearchStatusEnumMap, json['searchStatus']) ??
              SearchStatus.none,
    );

Map<String, dynamic> _$$_Pyfm150ModelToJson(_$_Pyfm150Model instance) =>
    <String, dynamic>{
      'type': _$MediaTypeEnumMap[instance.type]!,
      'tags': instance.tags.map((e) => _$FilterTagEnumMap[e]!).toList(),
      'resultList': instance.resultList,
      'selectedFileName': instance.selectedFileName,
      'searchStatus': _$SearchStatusEnumMap[instance.searchStatus]!,
    };

const _$MediaTypeEnumMap = {
  MediaType.all: 'all',
  MediaType.room: 'room',
  MediaType.spa: 'spa',
  MediaType.meal: 'meal',
  MediaType.faciity: 'faciity',
  MediaType.service: 'service',
  MediaType.exterior: 'exterior',
  MediaType.scenery: 'scenery',
  MediaType.plan: 'plan',
  MediaType.other: 'other',
};

const _$FilterTagEnumMap = {
  FilterTag.public: 'public',
  FilterTag.private: 'private',
};

const _$SearchStatusEnumMap = {
  SearchStatus.none: 'none',
  SearchStatus.loading: 'loading',
  SearchStatus.notFound: 'notFound',
  SearchStatus.found: 'found',
  SearchStatus.error: 'error',
};
