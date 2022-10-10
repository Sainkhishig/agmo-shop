// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashboardPageModel _$DashboardPageModelFromJson(Map<String, dynamic> json) {
  return _DashboardPageModel.fromJson(json);
}

/// @nodoc
class _$DashboardPageModelTearOff {
  const _$DashboardPageModelTearOff();

  _DashboardPageModel call(
      {int selectedIndex = 0,
      String searchKey = "",
      String masterDataDestination = "masterDate"}) {
    return _DashboardPageModel(
      selectedIndex: selectedIndex,
      searchKey: searchKey,
      masterDataDestination: masterDataDestination,
    );
  }

  DashboardPageModel fromJson(Map<String, Object> json) {
    return DashboardPageModel.fromJson(json);
  }
}

/// @nodoc
const $DashboardPageModel = _$DashboardPageModelTearOff();

/// @nodoc
mixin _$DashboardPageModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  String get masterDataDestination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashboardPageModelCopyWith<DashboardPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageModelCopyWith<$Res> {
  factory $DashboardPageModelCopyWith(
          DashboardPageModel value, $Res Function(DashboardPageModel) then) =
      _$DashboardPageModelCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class _$DashboardPageModelCopyWithImpl<$Res>
    implements $DashboardPageModelCopyWith<$Res> {
  _$DashboardPageModelCopyWithImpl(this._value, this._then);

  final DashboardPageModel _value;
  // ignore: unused_field
  final $Res Function(DashboardPageModel) _then;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? searchKey = freezed,
    Object? masterDataDestination = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterDataDestination: masterDataDestination == freezed
          ? _value.masterDataDestination
          : masterDataDestination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DashboardPageModelCopyWith<$Res>
    implements $DashboardPageModelCopyWith<$Res> {
  factory _$DashboardPageModelCopyWith(
          _DashboardPageModel value, $Res Function(_DashboardPageModel) then) =
      __$DashboardPageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class __$DashboardPageModelCopyWithImpl<$Res>
    extends _$DashboardPageModelCopyWithImpl<$Res>
    implements _$DashboardPageModelCopyWith<$Res> {
  __$DashboardPageModelCopyWithImpl(
      _DashboardPageModel _value, $Res Function(_DashboardPageModel) _then)
      : super(_value, (v) => _then(v as _DashboardPageModel));

  @override
  _DashboardPageModel get _value => super._value as _DashboardPageModel;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? searchKey = freezed,
    Object? masterDataDestination = freezed,
  }) {
    return _then(_DashboardPageModel(
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      searchKey: searchKey == freezed
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterDataDestination: masterDataDestination == freezed
          ? _value.masterDataDestination
          : masterDataDestination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DashboardPageModel implements _DashboardPageModel {
  const _$_DashboardPageModel(
      {this.selectedIndex = 0,
      this.searchKey = "",
      this.masterDataDestination = "masterDate"});

  factory _$_DashboardPageModel.fromJson(Map<String, dynamic> json) =>
      _$$_DashboardPageModelFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int selectedIndex;
  @JsonKey(defaultValue: "")
  @override
  final String searchKey;
  @JsonKey(defaultValue: "masterDate")
  @override
  final String masterDataDestination;

  @override
  String toString() {
    return 'DashboardPageModel(selectedIndex: $selectedIndex, searchKey: $searchKey, masterDataDestination: $masterDataDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DashboardPageModel &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)) &&
            (identical(other.searchKey, searchKey) ||
                const DeepCollectionEquality()
                    .equals(other.searchKey, searchKey)) &&
            (identical(other.masterDataDestination, masterDataDestination) ||
                const DeepCollectionEquality().equals(
                    other.masterDataDestination, masterDataDestination)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedIndex) ^
      const DeepCollectionEquality().hash(searchKey) ^
      const DeepCollectionEquality().hash(masterDataDestination);

  @JsonKey(ignore: true)
  @override
  _$DashboardPageModelCopyWith<_DashboardPageModel> get copyWith =>
      __$DashboardPageModelCopyWithImpl<_DashboardPageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DashboardPageModelToJson(this);
  }
}

abstract class _DashboardPageModel implements DashboardPageModel {
  const factory _DashboardPageModel(
      {int selectedIndex,
      String searchKey,
      String masterDataDestination}) = _$_DashboardPageModel;

  factory _DashboardPageModel.fromJson(Map<String, dynamic> json) =
      _$_DashboardPageModel.fromJson;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  String get searchKey => throw _privateConstructorUsedError;
  @override
  String get masterDataDestination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DashboardPageModelCopyWith<_DashboardPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
