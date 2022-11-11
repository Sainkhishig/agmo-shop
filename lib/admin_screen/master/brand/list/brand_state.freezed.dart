// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandState _$BrandStateFromJson(Map<String, dynamic> json) {
  return _BrandState.fromJson(json);
}

/// @nodoc
class _$BrandStateTearOff {
  const _$BrandStateTearOff();

  _BrandState call(
      {List<dynamic> tags = const [],
      String? selectedId = null,
      dynamic detailData = null}) {
    return _BrandState(
      tags: tags,
      selectedId: selectedId,
      detailData: detailData,
    );
  }

  BrandState fromJson(Map<String, Object> json) {
    return BrandState.fromJson(json);
  }
}

/// @nodoc
const $BrandState = _$BrandStateTearOff();

/// @nodoc
mixin _$BrandState {
  List<dynamic> get tags => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;
  dynamic get detailData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandStateCopyWith<BrandState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandStateCopyWith<$Res> {
  factory $BrandStateCopyWith(
          BrandState value, $Res Function(BrandState) then) =
      _$BrandStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class _$BrandStateCopyWithImpl<$Res> implements $BrandStateCopyWith<$Res> {
  _$BrandStateCopyWithImpl(this._value, this._then);

  final BrandState _value;
  // ignore: unused_field
  final $Res Function(BrandState) _then;

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
abstract class _$BrandStateCopyWith<$Res> implements $BrandStateCopyWith<$Res> {
  factory _$BrandStateCopyWith(
          _BrandState value, $Res Function(_BrandState) then) =
      __$BrandStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class __$BrandStateCopyWithImpl<$Res> extends _$BrandStateCopyWithImpl<$Res>
    implements _$BrandStateCopyWith<$Res> {
  __$BrandStateCopyWithImpl(
      _BrandState _value, $Res Function(_BrandState) _then)
      : super(_value, (v) => _then(v as _BrandState));

  @override
  _BrandState get _value => super._value as _BrandState;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
    Object? detailData = freezed,
  }) {
    return _then(_BrandState(
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
class _$_BrandState implements _BrandState {
  const _$_BrandState(
      {this.tags = const [], this.selectedId = null, this.detailData = null});

  factory _$_BrandState.fromJson(Map<String, dynamic> json) =>
      _$$_BrandStateFromJson(json);

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
    return 'BrandState(tags: $tags, selectedId: $selectedId, detailData: $detailData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BrandState &&
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
  _$BrandStateCopyWith<_BrandState> get copyWith =>
      __$BrandStateCopyWithImpl<_BrandState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandStateToJson(this);
  }
}

abstract class _BrandState implements BrandState {
  const factory _BrandState(
      {List<dynamic> tags,
      String? selectedId,
      dynamic detailData}) = _$_BrandState;

  factory _BrandState.fromJson(Map<String, dynamic> json) =
      _$_BrandState.fromJson;

  @override
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @override
  String? get selectedId => throw _privateConstructorUsedError;
  @override
  dynamic get detailData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BrandStateCopyWith<_BrandState> get copyWith =>
      throw _privateConstructorUsedError;
}
