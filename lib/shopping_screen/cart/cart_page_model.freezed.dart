// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartPageModel _$CartPageModelFromJson(Map<String, dynamic> json) {
  return _CartPageModel.fromJson(json);
}

/// @nodoc
class _$CartPageModelTearOff {
  const _$CartPageModelTearOff();

  _CartPageModel call(
      {int selectedIndex = 0,
      String searchKey = "",
      String masterDataDestination = "masterDate"}) {
    return _CartPageModel(
      selectedIndex: selectedIndex,
      searchKey: searchKey,
      masterDataDestination: masterDataDestination,
    );
  }

  CartPageModel fromJson(Map<String, Object> json) {
    return CartPageModel.fromJson(json);
  }
}

/// @nodoc
const $CartPageModel = _$CartPageModelTearOff();

/// @nodoc
mixin _$CartPageModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  String get searchKey => throw _privateConstructorUsedError;
  String get masterDataDestination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartPageModelCopyWith<CartPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPageModelCopyWith<$Res> {
  factory $CartPageModelCopyWith(
          CartPageModel value, $Res Function(CartPageModel) then) =
      _$CartPageModelCopyWithImpl<$Res>;
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class _$CartPageModelCopyWithImpl<$Res>
    implements $CartPageModelCopyWith<$Res> {
  _$CartPageModelCopyWithImpl(this._value, this._then);

  final CartPageModel _value;
  // ignore: unused_field
  final $Res Function(CartPageModel) _then;

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
abstract class _$CartPageModelCopyWith<$Res>
    implements $CartPageModelCopyWith<$Res> {
  factory _$CartPageModelCopyWith(
          _CartPageModel value, $Res Function(_CartPageModel) then) =
      __$CartPageModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int selectedIndex, String searchKey, String masterDataDestination});
}

/// @nodoc
class __$CartPageModelCopyWithImpl<$Res>
    extends _$CartPageModelCopyWithImpl<$Res>
    implements _$CartPageModelCopyWith<$Res> {
  __$CartPageModelCopyWithImpl(
      _CartPageModel _value, $Res Function(_CartPageModel) _then)
      : super(_value, (v) => _then(v as _CartPageModel));

  @override
  _CartPageModel get _value => super._value as _CartPageModel;

  @override
  $Res call({
    Object? selectedIndex = freezed,
    Object? searchKey = freezed,
    Object? masterDataDestination = freezed,
  }) {
    return _then(_CartPageModel(
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
class _$_CartPageModel implements _CartPageModel {
  const _$_CartPageModel(
      {this.selectedIndex = 0,
      this.searchKey = "",
      this.masterDataDestination = "masterDate"});

  factory _$_CartPageModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartPageModelFromJson(json);

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
    return 'CartPageModel(selectedIndex: $selectedIndex, searchKey: $searchKey, masterDataDestination: $masterDataDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartPageModel &&
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
  _$CartPageModelCopyWith<_CartPageModel> get copyWith =>
      __$CartPageModelCopyWithImpl<_CartPageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartPageModelToJson(this);
  }
}

abstract class _CartPageModel implements CartPageModel {
  const factory _CartPageModel(
      {int selectedIndex,
      String searchKey,
      String masterDataDestination}) = _$_CartPageModel;

  factory _CartPageModel.fromJson(Map<String, dynamic> json) =
      _$_CartPageModel.fromJson;

  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  String get searchKey => throw _privateConstructorUsedError;
  @override
  String get masterDataDestination => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartPageModelCopyWith<_CartPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
