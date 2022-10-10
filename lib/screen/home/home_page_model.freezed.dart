// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomePageModel _$HomePageModelFromJson(Map<String, dynamic> json) {
  return _HomePageModel.fromJson(json);
}

/// @nodoc
class _$HomePageModelTearOff {
  const _$HomePageModelTearOff();

  _HomePageModel call(
      {int selectedIndex = 0,
      String searchKey = "",
      String masterDataDestination = "masterDate"}) {
    return _HomePageModel(
      selectedIndex: selectedIndex,
      searchKey: searchKey,
      masterDataDestination: masterDataDestination,
    );
  }

  HomePageModel fromJson(Map<String, Object> json) {
    return HomePageModel.fromJson(json);
  }
}

/// @nodoc
const $HomePageModel = _$HomePageModelTearOff();

/// @nodoc
mixin _$HomePageModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  String get masterDataDestination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomePageModelCopyWith<HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageModelCopyWith<$Res> {
  factory $HomePageModelCopyWith(
          HomePageModel value, $Res Function(HomePageModel) then) =
      _$HomePageModelCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class _$HomePageModelCopyWithImpl<$Res>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._value, this._then);

  final HomePageModel _value;
  // ignore: unused_field
  final $Res Function(HomePageModel) _then;

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
abstract class _$HomePageModelCopyWith<$Res>
    implements $HomePageModelCopyWith<$Res> {
  factory _$HomePageModelCopyWith(
          _HomePageModel value, $Res Function(_HomePageModel) then) =
      __$HomePageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class __$HomePageModelCopyWithImpl<$Res>
    extends _$HomePageModelCopyWithImpl<$Res>
    implements _$HomePageModelCopyWith<$Res> {
  __$HomePageModelCopyWithImpl(
      _HomePageModel _value, $Res Function(_HomePageModel) _then)
      : super(_value, (v) => _then(v as _HomePageModel));

  @override
  _HomePageModel get _value => super._value as _HomePageModel;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? searchKey = freezed,
    Object? masterDataDestination = freezed,
  }) {
    return _then(_HomePageModel(
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
class _$_HomePageModel implements _HomePageModel {
  const _$_HomePageModel(
      {this.selectedIndex = 0,
      this.searchKey = "",
      this.masterDataDestination = "masterDate"});

  factory _$_HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$$_HomePageModelFromJson(json);

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
    return 'HomePageModel(selectedIndex: $selectedIndex, searchKey: $searchKey, masterDataDestination: $masterDataDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomePageModel &&
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
  _$HomePageModelCopyWith<_HomePageModel> get copyWith =>
      __$HomePageModelCopyWithImpl<_HomePageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomePageModelToJson(this);
  }
}

abstract class _HomePageModel implements HomePageModel {
  const factory _HomePageModel(
      {int selectedIndex,
      String searchKey,
      String masterDataDestination}) = _$_HomePageModel;

  factory _HomePageModel.fromJson(Map<String, dynamic> json) =
      _$_HomePageModel.fromJson;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  String get searchKey => throw _privateConstructorUsedError;
  @override
  String get masterDataDestination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomePageModelCopyWith<_HomePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
