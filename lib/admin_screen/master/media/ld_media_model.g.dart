// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ld_media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LdMediaModel _$$_LdMediaModelFromJson(Map<String, dynamic> json) =>
    _$_LdMediaModel(
      language: json['language'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      isAutoTranslatedTitle: json['isAutoTranslatedTitle'] as bool? ?? false,
      isAutoTranslatedDescription:
          json['isAutoTranslatedDescription'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LdMediaModelToJson(_$_LdMediaModel instance) =>
    <String, dynamic>{
      'language': instance.language,
      'title': instance.title,
      'description': instance.description,
      'isAutoTranslatedTitle': instance.isAutoTranslatedTitle,
      'isAutoTranslatedDescription': instance.isAutoTranslatedDescription,
    };
