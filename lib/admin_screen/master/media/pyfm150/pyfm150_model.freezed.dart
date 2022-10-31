// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pyfm150_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pyfm150Model _$Pyfm150ModelFromJson(Map<String, dynamic> json) {
  return _Pyfm150Model.fromJson(json);
}

/// @nodoc
class _$Pyfm150ModelTearOff {
  const _$Pyfm150ModelTearOff();

  _Pyfm150Model call(
      {MediaType type = MediaType.all,
      List<FilterTag> tags = const [],
      List<MediaModel>? resultList = null,
      String? selectedFileName = null,
      SearchStatus searchStatus = SearchStatus.none}) {
    return _Pyfm150Model(
      type: type,
      tags: tags,
      resultList: resultList,
      selectedFileName: selectedFileName,
      searchStatus: searchStatus,
    );
  }

  Pyfm150Model fromJson(Map<String, Object> json) {
    return Pyfm150Model.fromJson(json);
  }
}

/// @nodoc
const $Pyfm150Model = _$Pyfm150ModelTearOff();

/// @nodoc
mixin _$Pyfm150Model {
  MediaType get type => throw _privateConstructorUsedError;
  List<FilterTag> get tags => throw _privateConstructorUsedError;
  List<MediaModel>? get resultList => throw _privateConstructorUsedError;
  String? get selectedFileName => throw _privateConstructorUsedError;
  SearchStatus get searchStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Pyfm150ModelCopyWith<Pyfm150Model> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Pyfm150ModelCopyWith<$Res> {
  factory $Pyfm150ModelCopyWith(
          Pyfm150Model value, $Res Function(Pyfm150Model) then) =
      _$Pyfm150ModelCopyWithImpl<$Res>;
  $Res call(
      {MediaType type,
      List<FilterTag> tags,
      List<MediaModel>? resultList,
      String? selectedFileName,
      SearchStatus searchStatus});
}

/// @nodoc
class _$Pyfm150ModelCopyWithImpl<$Res> implements $Pyfm150ModelCopyWith<$Res> {
  _$Pyfm150ModelCopyWithImpl(this._value, this._then);

  final Pyfm150Model _value;
  // ignore: unused_field
  final $Res Function(Pyfm150Model) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? tags = freezed,
    Object? resultList = freezed,
    Object? selectedFileName = freezed,
    Object? searchStatus = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<FilterTag>,
      resultList: resultList == freezed
          ? _value.resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      selectedFileName: selectedFileName == freezed
          ? _value.selectedFileName
          : selectedFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchStatus: searchStatus == freezed
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ));
  }
}

/// @nodoc
abstract class _$Pyfm150ModelCopyWith<$Res>
    implements $Pyfm150ModelCopyWith<$Res> {
  factory _$Pyfm150ModelCopyWith(
          _Pyfm150Model value, $Res Function(_Pyfm150Model) then) =
      __$Pyfm150ModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {MediaType type,
      List<FilterTag> tags,
      List<MediaModel>? resultList,
      String? selectedFileName,
      SearchStatus searchStatus});
}

/// @nodoc
class __$Pyfm150ModelCopyWithImpl<$Res> extends _$Pyfm150ModelCopyWithImpl<$Res>
    implements _$Pyfm150ModelCopyWith<$Res> {
  __$Pyfm150ModelCopyWithImpl(
      _Pyfm150Model _value, $Res Function(_Pyfm150Model) _then)
      : super(_value, (v) => _then(v as _Pyfm150Model));

  @override
  _Pyfm150Model get _value => super._value as _Pyfm150Model;

  @override
  $Res call({
    Object? type = freezed,
    Object? tags = freezed,
    Object? resultList = freezed,
    Object? selectedFileName = freezed,
    Object? searchStatus = freezed,
  }) {
    return _then(_Pyfm150Model(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<FilterTag>,
      resultList: resultList == freezed
          ? _value.resultList
          : resultList // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      selectedFileName: selectedFileName == freezed
          ? _value.selectedFileName
          : selectedFileName // ignore: cast_nullable_to_non_nullable
              as String?,
      searchStatus: searchStatus == freezed
          ? _value.searchStatus
          : searchStatus // ignore: cast_nullable_to_non_nullable
              as SearchStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pyfm150Model implements _Pyfm150Model {
  const _$_Pyfm150Model(
      {this.type = MediaType.all,
      this.tags = const [],
      this.resultList = null,
      this.selectedFileName = null,
      this.searchStatus = SearchStatus.none});

  factory _$_Pyfm150Model.fromJson(Map<String, dynamic> json) =>
      _$$_Pyfm150ModelFromJson(json);

  @JsonKey(defaultValue: MediaType.all)
  @override
  final MediaType type;
  @JsonKey(defaultValue: const [])
  @override
  final List<FilterTag> tags;
  @JsonKey(defaultValue: null)
  @override
  final List<MediaModel>? resultList;
  @JsonKey(defaultValue: null)
  @override
  final String? selectedFileName;
  @JsonKey(defaultValue: SearchStatus.none)
  @override
  final SearchStatus searchStatus;

  @override
  String toString() {
    return 'Pyfm150Model(type: $type, tags: $tags, resultList: $resultList, selectedFileName: $selectedFileName, searchStatus: $searchStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pyfm150Model &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.resultList, resultList) ||
                const DeepCollectionEquality()
                    .equals(other.resultList, resultList)) &&
            (identical(other.selectedFileName, selectedFileName) ||
                const DeepCollectionEquality()
                    .equals(other.selectedFileName, selectedFileName)) &&
            (identical(other.searchStatus, searchStatus) ||
                const DeepCollectionEquality()
                    .equals(other.searchStatus, searchStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(resultList) ^
      const DeepCollectionEquality().hash(selectedFileName) ^
      const DeepCollectionEquality().hash(searchStatus);

  @JsonKey(ignore: true)
  @override
  _$Pyfm150ModelCopyWith<_Pyfm150Model> get copyWith =>
      __$Pyfm150ModelCopyWithImpl<_Pyfm150Model>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_Pyfm150ModelToJson(this);
  }
}

abstract class _Pyfm150Model implements Pyfm150Model {
  const factory _Pyfm150Model(
      {MediaType type,
      List<FilterTag> tags,
      List<MediaModel>? resultList,
      String? selectedFileName,
      SearchStatus searchStatus}) = _$_Pyfm150Model;

  factory _Pyfm150Model.fromJson(Map<String, dynamic> json) =
      _$_Pyfm150Model.fromJson;

  @override
  MediaType get type => throw _privateConstructorUsedError;
  @override
  List<FilterTag> get tags => throw _privateConstructorUsedError;
  @override
  List<MediaModel>? get resultList => throw _privateConstructorUsedError;
  @override
  String? get selectedFileName => throw _privateConstructorUsedError;
  @override
  SearchStatus get searchStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$Pyfm150ModelCopyWith<_Pyfm150Model> get copyWith =>
      throw _privateConstructorUsedError;
}
