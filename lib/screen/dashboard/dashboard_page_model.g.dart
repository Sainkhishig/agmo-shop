// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DashboardPageModel _$$_DashboardPageModelFromJson(
        Map<String, dynamic> json) =>
    _$_DashboardPageModel(
      selectedIndex: json['selectedIndex'] as int? ?? 0,
      searchKey: json['searchKey'] as String? ?? '',
      masterDataDestination:
          json['masterDataDestination'] as String? ?? 'masterDate',
    );

Map<String, dynamic> _$$_DashboardPageModelToJson(
        _$_DashboardPageModel instance) =>
    <String, dynamic>{
      'selectedIndex': instance.selectedIndex,
      'searchKey': instance.searchKey,
      'masterDataDestination': instance.masterDataDestination,
    };
