// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_common_page_model_.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminCommonPageModel _$AdminCommonPageModelFromJson(Map<String, dynamic> json) {
  return _AdminCommonPageModel.fromJson(json);
}

/// @nodoc
class _$AdminCommonPageModelTearOff {
  const _$AdminCommonPageModelTearOff();

  _AdminCommonPageModel call(
      {String title = "", int selectedIndex = 0, bool isGameMode = false}) {
    return _AdminCommonPageModel(
      title: title,
      selectedIndex: selectedIndex,
      isGameMode: isGameMode,
    );
  }

  AdminCommonPageModel fromJson(Map<String, Object> json) {
    return AdminCommonPageModel.fromJson(json);
  }
}

/// @nodoc
const $AdminCommonPageModel = _$AdminCommonPageModelTearOff();

/// @nodoc
mixin _$AdminCommonPageModel {
  String get title => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;
  bool get isGameMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminCommonPageModelCopyWith<AdminCommonPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCommonPageModelCopyWith<$Res> {
  factory $AdminCommonPageModelCopyWith(AdminCommonPageModel value,
          $Res Function(AdminCommonPageModel) then) =
      _$AdminCommonPageModelCopyWithImpl<$Res>;
  $Res call({String title, int selectedIndex, bool isGameMode});
}

/// @nodoc
class _$AdminCommonPageModelCopyWithImpl<$Res>
    implements $AdminCommonPageModelCopyWith<$Res> {
  _$AdminCommonPageModelCopyWithImpl(this._value, this._then);

  final AdminCommonPageModel _value;
  // ignore: unused_field
  final $Res Function(AdminCommonPageModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? selectedIndex = freezed,
    Object? isGameMode = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isGameMode: isGameMode == freezed
          ? _value.isGameMode
          : isGameMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AdminCommonPageModelCopyWith<$Res>
    implements $AdminCommonPageModelCopyWith<$Res> {
  factory _$AdminCommonPageModelCopyWith(_AdminCommonPageModel value,
          $Res Function(_AdminCommonPageModel) then) =
      __$AdminCommonPageModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, int selectedIndex, bool isGameMode});
}

/// @nodoc
class __$AdminCommonPageModelCopyWithImpl<$Res>
    extends _$AdminCommonPageModelCopyWithImpl<$Res>
    implements _$AdminCommonPageModelCopyWith<$Res> {
  __$AdminCommonPageModelCopyWithImpl(
      _AdminCommonPageModel _value, $Res Function(_AdminCommonPageModel) _then)
      : super(_value, (v) => _then(v as _AdminCommonPageModel));

  @override
  _AdminCommonPageModel get _value => super._value as _AdminCommonPageModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? selectedIndex = freezed,
    Object? isGameMode = freezed,
  }) {
    return _then(_AdminCommonPageModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      selectedIndex: selectedIndex == freezed
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isGameMode: isGameMode == freezed
          ? _value.isGameMode
          : isGameMode // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdminCommonPageModel implements _AdminCommonPageModel {
  const _$_AdminCommonPageModel(
      {this.title = "", this.selectedIndex = 0, this.isGameMode = false});

  factory _$_AdminCommonPageModel.fromJson(Map<String, dynamic> json) =>
      _$$_AdminCommonPageModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String title;
  @JsonKey(defaultValue: 0)
  @override
  final int selectedIndex;
  @JsonKey(defaultValue: false)
  @override
  final bool isGameMode;

  @override
  String toString() {
    return 'AdminCommonPageModel(title: $title, selectedIndex: $selectedIndex, isGameMode: $isGameMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdminCommonPageModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.selectedIndex, selectedIndex) ||
                const DeepCollectionEquality()
                    .equals(other.selectedIndex, selectedIndex)) &&
            (identical(other.isGameMode, isGameMode) ||
                const DeepCollectionEquality()
                    .equals(other.isGameMode, isGameMode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(selectedIndex) ^
      const DeepCollectionEquality().hash(isGameMode);

  @JsonKey(ignore: true)
  @override
  _$AdminCommonPageModelCopyWith<_AdminCommonPageModel> get copyWith =>
      __$AdminCommonPageModelCopyWithImpl<_AdminCommonPageModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminCommonPageModelToJson(this);
  }
}

abstract class _AdminCommonPageModel implements AdminCommonPageModel {
  const factory _AdminCommonPageModel(
      {String title,
      int selectedIndex,
      bool isGameMode}) = _$_AdminCommonPageModel;

  factory _AdminCommonPageModel.fromJson(Map<String, dynamic> json) =
      _$_AdminCommonPageModel.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  int get selectedIndex => throw _privateConstructorUsedError;
  @override
  bool get isGameMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdminCommonPageModelCopyWith<_AdminCommonPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
