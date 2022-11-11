// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measure_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MeasureState _$MeasureStateFromJson(Map<String, dynamic> json) {
  return _MeasureState.fromJson(json);
}

/// @nodoc
class _$MeasureStateTearOff {
  const _$MeasureStateTearOff();

  _MeasureState call(
      {List<dynamic> tags = const [],
      String? selectedId = null,
      dynamic detailData = null}) {
    return _MeasureState(
      tags: tags,
      selectedId: selectedId,
      detailData: detailData,
    );
  }

  MeasureState fromJson(Map<String, Object> json) {
    return MeasureState.fromJson(json);
  }
}

/// @nodoc
const $MeasureState = _$MeasureStateTearOff();

/// @nodoc
mixin _$MeasureState {
  List<dynamic> get tags => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;
  dynamic get detailData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasureStateCopyWith<MeasureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasureStateCopyWith<$Res> {
  factory $MeasureStateCopyWith(
          MeasureState value, $Res Function(MeasureState) then) =
      _$MeasureStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class _$MeasureStateCopyWithImpl<$Res> implements $MeasureStateCopyWith<$Res> {
  _$MeasureStateCopyWithImpl(this._value, this._then);

  final MeasureState _value;
  // ignore: unused_field
  final $Res Function(MeasureState) _then;

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
abstract class _$MeasureStateCopyWith<$Res>
    implements $MeasureStateCopyWith<$Res> {
  factory _$MeasureStateCopyWith(
          _MeasureState value, $Res Function(_MeasureState) then) =
      __$MeasureStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> tags, String? selectedId, dynamic detailData});
}

/// @nodoc
class __$MeasureStateCopyWithImpl<$Res> extends _$MeasureStateCopyWithImpl<$Res>
    implements _$MeasureStateCopyWith<$Res> {
  __$MeasureStateCopyWithImpl(
      _MeasureState _value, $Res Function(_MeasureState) _then)
      : super(_value, (v) => _then(v as _MeasureState));

  @override
  _MeasureState get _value => super._value as _MeasureState;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
    Object? detailData = freezed,
  }) {
    return _then(_MeasureState(
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
class _$_MeasureState implements _MeasureState {
  const _$_MeasureState(
      {this.tags = const [], this.selectedId = null, this.detailData = null});

  factory _$_MeasureState.fromJson(Map<String, dynamic> json) =>
      _$$_MeasureStateFromJson(json);

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
    return 'MeasureState(tags: $tags, selectedId: $selectedId, detailData: $detailData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MeasureState &&
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
  _$MeasureStateCopyWith<_MeasureState> get copyWith =>
      __$MeasureStateCopyWithImpl<_MeasureState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasureStateToJson(this);
  }
}

abstract class _MeasureState implements MeasureState {
  const factory _MeasureState(
      {List<dynamic> tags,
      String? selectedId,
      dynamic detailData}) = _$_MeasureState;

  factory _MeasureState.fromJson(Map<String, dynamic> json) =
      _$_MeasureState.fromJson;

  @override
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @override
  String? get selectedId => throw _privateConstructorUsedError;
  @override
  dynamic get detailData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MeasureStateCopyWith<_MeasureState> get copyWith =>
      throw _privateConstructorUsedError;
}
