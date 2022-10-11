// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_upload_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageUploadPageModel _$ImageUploadPageModelFromJson(Map<String, dynamic> json) {
  return _ImageUploadPageModel.fromJson(json);
}

/// @nodoc
class _$ImageUploadPageModelTearOff {
  const _$ImageUploadPageModelTearOff();

  _ImageUploadPageModel call(
      {int selectedIndex = 0,
      String searchKey = "",
      String masterDataDestination = "masterDate"}) {
    return _ImageUploadPageModel(
      selectedIndex: selectedIndex,
      searchKey: searchKey,
      masterDataDestination: masterDataDestination,
    );
  }

  ImageUploadPageModel fromJson(Map<String, Object> json) {
    return ImageUploadPageModel.fromJson(json);
  }
}

/// @nodoc
const $ImageUploadPageModel = _$ImageUploadPageModelTearOff();

/// @nodoc
mixin _$ImageUploadPageModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  String get masterDataDestination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUploadPageModelCopyWith<ImageUploadPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUploadPageModelCopyWith<$Res> {
  factory $ImageUploadPageModelCopyWith(ImageUploadPageModel value,
          $Res Function(ImageUploadPageModel) then) =
      _$ImageUploadPageModelCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class _$ImageUploadPageModelCopyWithImpl<$Res>
    implements $ImageUploadPageModelCopyWith<$Res> {
  _$ImageUploadPageModelCopyWithImpl(this._value, this._then);

  final ImageUploadPageModel _value;
  // ignore: unused_field
  final $Res Function(ImageUploadPageModel) _then;

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
abstract class _$ImageUploadPageModelCopyWith<$Res>
    implements $ImageUploadPageModelCopyWith<$Res> {
  factory _$ImageUploadPageModelCopyWith(_ImageUploadPageModel value,
          $Res Function(_ImageUploadPageModel) then) =
      __$ImageUploadPageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class __$ImageUploadPageModelCopyWithImpl<$Res>
    extends _$ImageUploadPageModelCopyWithImpl<$Res>
    implements _$ImageUploadPageModelCopyWith<$Res> {
  __$ImageUploadPageModelCopyWithImpl(
      _ImageUploadPageModel _value, $Res Function(_ImageUploadPageModel) _then)
      : super(_value, (v) => _then(v as _ImageUploadPageModel));

  @override
  _ImageUploadPageModel get _value => super._value as _ImageUploadPageModel;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? searchKey = freezed,
    Object? masterDataDestination = freezed,
  }) {
    return _then(_ImageUploadPageModel(
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
class _$_ImageUploadPageModel implements _ImageUploadPageModel {
  const _$_ImageUploadPageModel(
      {this.selectedIndex = 0,
      this.searchKey = "",
      this.masterDataDestination = "masterDate"});

  factory _$_ImageUploadPageModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImageUploadPageModelFromJson(json);

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
    return 'ImageUploadPageModel(selectedIndex: $selectedIndex, searchKey: $searchKey, masterDataDestination: $masterDataDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ImageUploadPageModel &&
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
  _$ImageUploadPageModelCopyWith<_ImageUploadPageModel> get copyWith =>
      __$ImageUploadPageModelCopyWithImpl<_ImageUploadPageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageUploadPageModelToJson(this);
  }
}

abstract class _ImageUploadPageModel implements ImageUploadPageModel {
  const factory _ImageUploadPageModel(
      {int selectedIndex,
      String searchKey,
      String masterDataDestination}) = _$_ImageUploadPageModel;

  factory _ImageUploadPageModel.fromJson(Map<String, dynamic> json) =
      _$_ImageUploadPageModel.fromJson;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  String get searchKey => throw _privateConstructorUsedError;
  @override
  String get masterDataDestination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ImageUploadPageModelCopyWith<_ImageUploadPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
