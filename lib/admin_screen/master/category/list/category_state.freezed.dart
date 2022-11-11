// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryState _$CategoryStateFromJson(Map<String, dynamic> json) {
  return _CategoryState.fromJson(json);
}

/// @nodoc
class _$CategoryStateTearOff {
  const _$CategoryStateTearOff();

  _CategoryState call(
      {List<dynamic> tags = const [],
      String? selectedId = null,
      dynamic detailData = null}) {
    return _CategoryState(
      tags: tags,
      selectedId: selectedId,
      detailData: detailData,
    );
  }

  CategoryState fromJson(Map<String, Object> json) {
    return CategoryState.fromJson(json);
  }
}

/// @nodoc
const $CategoryState = _$CategoryStateTearOff();

/// @nodoc
mixin _$CategoryState {
  List<dynamic> get tags => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;
  dynamic get detailData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryStateCopyWith<CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  final CategoryState _value;
  // ignore: unused_field
  final $Res Function(CategoryState) _then;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
    Object? detailData = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      detailData: detailData == freezed
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$CategoryStateCopyWith<$Res>
    implements $CategoryStateCopyWith<$Res> {
  factory _$CategoryStateCopyWith(
          _CategoryState value, $Res Function(_CategoryState) then) =
      __$CategoryStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class __$CategoryStateCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res>
    implements _$CategoryStateCopyWith<$Res> {
  __$CategoryStateCopyWithImpl(
      _CategoryState _value, $Res Function(_CategoryState) _then)
      : super(_value, (v) => _then(v as _CategoryState));

  @override
  _CategoryState get _value => super._value as _CategoryState;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
    Object? detailData = freezed,
  }) {
    return _then(_CategoryState(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
      detailData: detailData == freezed
          ? _value.detailData
          : detailData // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoryState implements _CategoryState {
  const _$_CategoryState(
      {this.tags = const [], this.selectedId = null, this.detailData = null});

  factory _$_CategoryState.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> tags;
  @JsonKey(defaultValue: null)
  @override
  final String? selectedId;
  @JsonKey(defaultValue: null)
  @override
  final dynamic detailData;

  @override
  String toString() {
    return 'CategoryState(tags: $tags, selectedId: $selectedId, detailData: $detailData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryState &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.selectedId, selectedId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedId, selectedId)) &&
            (identical(other.detailData, detailData) ||
                const DeepCollectionEquality()
                    .equals(other.detailData, detailData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(selectedId) ^
      const DeepCollectionEquality().hash(detailData);

  @JsonKey(ignore: true)
  @override
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      __$CategoryStateCopyWithImpl<_CategoryState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryStateToJson(this);
  }
}

abstract class _CategoryState implements CategoryState {
  const factory _CategoryState(
      {List<dynamic> tags,
      String? selectedId,
      dynamic detailData}) = _$_CategoryState;

  factory _CategoryState.fromJson(Map<String, dynamic> json) =
      _$_CategoryState.fromJson;

  @override
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @override
  String? get selectedId => throw _privateConstructorUsedError;
  @override
  dynamic get detailData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryStateCopyWith<_CategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
