// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'size_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SizeState _$SizeStateFromJson(Map<String, dynamic> json) {
  return _SizeState.fromJson(json);
}

/// @nodoc
class _$SizeStateTearOff {
  const _$SizeStateTearOff();

  _SizeState call({List<dynamic> tags = const [], String? selectedId = null}) {
    return _SizeState(
      tags: tags,
      selectedId: selectedId,
    );
  }

  SizeState fromJson(Map<String, Object> json) {
    return SizeState.fromJson(json);
  }
}

/// @nodoc
const $SizeState = _$SizeStateTearOff();

/// @nodoc
mixin _$SizeState {
  List<dynamic> get tags => throw _privateConstructorUsedError;
  String? get selectedId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeStateCopyWith<SizeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeStateCopyWith<$Res> {
  factory $SizeStateCopyWith(SizeState value, $Res Function(SizeState) then) =
      _$SizeStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> tags, String? selectedId});
}

/// @nodoc
class _$SizeStateCopyWithImpl<$Res> implements $SizeStateCopyWith<$Res> {
  _$SizeStateCopyWithImpl(this._value, this._then);

  final SizeState _value;
  // ignore: unused_field
  final $Res Function(SizeState) _then;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$SizeStateCopyWith<$Res> implements $SizeStateCopyWith<$Res> {
  factory _$SizeStateCopyWith(
          _SizeState value, $Res Function(_SizeState) then) =
      __$SizeStateCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> tags, String? selectedId});
}

/// @nodoc
class __$SizeStateCopyWithImpl<$Res> extends _$SizeStateCopyWithImpl<$Res>
    implements _$SizeStateCopyWith<$Res> {
  __$SizeStateCopyWithImpl(_SizeState _value, $Res Function(_SizeState) _then)
      : super(_value, (v) => _then(v as _SizeState));

  @override
  _SizeState get _value => super._value as _SizeState;

  @override
  $Res call({
    Object? tags = freezed,
    Object? selectedId = freezed,
  }) {
    return _then(_SizeState(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      selectedId: selectedId == freezed
          ? _value.selectedId
          : selectedId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SizeState implements _SizeState {
  const _$_SizeState({this.tags = const [], this.selectedId = null});

  factory _$_SizeState.fromJson(Map<String, dynamic> json) =>
      _$$_SizeStateFromJson(json);

  @JsonKey(defaultValue: const [])
  @override
  final List<dynamic> tags;
  @JsonKey(defaultValue: null)
  @override
  final String? selectedId;

  @override
  String toString() {
    return 'SizeState(tags: $tags, selectedId: $selectedId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SizeState &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.selectedId, selectedId) ||
                const DeepCollectionEquality()
                    .equals(other.selectedId, selectedId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(selectedId);

  @JsonKey(ignore: true)
  @override
  _$SizeStateCopyWith<_SizeState> get copyWith =>
      __$SizeStateCopyWithImpl<_SizeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SizeStateToJson(this);
  }
}

abstract class _SizeState implements SizeState {
  const factory _SizeState({List<dynamic> tags, String? selectedId}) =
      _$_SizeState;

  factory _SizeState.fromJson(Map<String, dynamic> json) =
      _$_SizeState.fromJson;

  @override
  List<dynamic> get tags => throw _privateConstructorUsedError;
  @override
  String? get selectedId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SizeStateCopyWith<_SizeState> get copyWith =>
      throw _privateConstructorUsedError;
}
