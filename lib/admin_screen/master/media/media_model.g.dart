// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MediaModel _$$_MediaModelFromJson(Map<String, dynamic> json) =>
    _$_MediaModel(
      fileName: json['fileName'] as String? ?? '',
      facilityId: json['facilityId'] as String? ?? '',
      categoryId: json['categoryId'] as String? ?? '',
      isPublic: json['isPublic'] as bool? ?? false,
      displayOrder: json['displayOrder'] as int? ?? null,
      createdBy: json['createdBy'] as String? ?? '',
      createdDate: json['createdDate'] as String? ?? '',
      lastModifiedBy: json['lastModifiedBy'] as String? ?? '',
      lastModifiedDate: json['lastModifiedDate'] as String? ?? '',
    );

Map<String, dynamic> _$$_MediaModelToJson(_$_MediaModel instance) =>
    <String, dynamic>{
      'fileName': instance.fileName,
      'facilityId': instance.facilityId,
      'categoryId': instance.categoryId,
      'isPublic': instance.isPublic,
      'displayOrder': instance.displayOrder,
      'createdBy': instance.createdBy,
      'createdDate': instance.createdDate,
      'lastModifiedBy': instance.lastModifiedBy,
      'lastModifiedDate': instance.lastModifiedDate,
    };
