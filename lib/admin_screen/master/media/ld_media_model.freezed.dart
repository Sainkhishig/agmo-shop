// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ld_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LdMediaModel _$LdMediaModelFromJson(Map<String, dynamic> json) {
  return _LdMediaModel.fromJson(json);
}

/// @nodoc
class _$LdMediaModelTearOff {
  const _$LdMediaModelTearOff();

  _LdMediaModel call(
      {String language = "",
      String title = "",
      String description = "",
      bool isAutoTranslatedTitle = false,
      bool isAutoTranslatedDescription = false}) {
    return _LdMediaModel(
      language: language,
      title: title,
      description: description,
      isAutoTranslatedTitle: isAutoTranslatedTitle,
      isAutoTranslatedDescription: isAutoTranslatedDescription,
    );
  }

  LdMediaModel fromJson(Map<String, Object> json) {
    return LdMediaModel.fromJson(json);
  }
}

/// @nodoc
const $LdMediaModel = _$LdMediaModelTearOff();

/// @nodoc
mixin _$LdMediaModel {
  String get language => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isAutoTranslatedTitle => throw _privateConstructorUsedError;
  bool get isAutoTranslatedDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LdMediaModelCopyWith<LdMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LdMediaModelCopyWith<$Res> {
  factory $LdMediaModelCopyWith(
          LdMediaModel value, $Res Function(LdMediaModel) then) =
      _$LdMediaModelCopyWithImpl<$Res>;
  $Res call(
      {String language,
      String title,
      String description,
      bool isAutoTranslatedTitle,
      bool isAutoTranslatedDescription});
}

/// @nodoc
class _$LdMediaModelCopyWithImpl<$Res> implements $LdMediaModelCopyWith<$Res> {
  _$LdMediaModelCopyWithImpl(this._value, this._then);

  final LdMediaModel _value;
  // ignore: unused_field
  final $Res Function(LdMediaModel) _then;

  @override
  $Res call({
    Object? language = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isAutoTranslatedTitle = freezed,
    Object? isAutoTranslatedDescription = freezed,
  }) {
    return _then(_value.copyWith(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoTranslatedTitle: isAutoTranslatedTitle == freezed
          ? _value.isAutoTranslatedTitle
          : isAutoTranslatedTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoTranslatedDescription: isAutoTranslatedDescription == freezed
          ? _value.isAutoTranslatedDescription
          : isAutoTranslatedDescription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LdMediaModelCopyWith<$Res>
    implements $LdMediaModelCopyWith<$Res> {
  factory _$LdMediaModelCopyWith(
          _LdMediaModel value, $Res Function(_LdMediaModel) then) =
      __$LdMediaModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String language,
      String title,
      String description,
      bool isAutoTranslatedTitle,
      bool isAutoTranslatedDescription});
}

/// @nodoc
class __$LdMediaModelCopyWithImpl<$Res> extends _$LdMediaModelCopyWithImpl<$Res>
    implements _$LdMediaModelCopyWith<$Res> {
  __$LdMediaModelCopyWithImpl(
      _LdMediaModel _value, $Res Function(_LdMediaModel) _then)
      : super(_value, (v) => _then(v as _LdMediaModel));

  @override
  _LdMediaModel get _value => super._value as _LdMediaModel;

  @override
  $Res call({
    Object? language = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isAutoTranslatedTitle = freezed,
    Object? isAutoTranslatedDescription = freezed,
  }) {
    return _then(_LdMediaModel(
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isAutoTranslatedTitle: isAutoTranslatedTitle == freezed
          ? _value.isAutoTranslatedTitle
          : isAutoTranslatedTitle // ignore: cast_nullable_to_non_nullable
              as bool,
      isAutoTranslatedDescription: isAutoTranslatedDescription == freezed
          ? _value.isAutoTranslatedDescription
          : isAutoTranslatedDescription // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LdMediaModel implements _LdMediaModel {
  const _$_LdMediaModel(
      {this.language = "",
      this.title = "",
      this.description = "",
      this.isAutoTranslatedTitle = false,
      this.isAutoTranslatedDescription = false});

  factory _$_LdMediaModel.fromJson(Map<String, dynamic> json) =>
      _$$_LdMediaModelFromJson(json);

  @JsonKey(defaultValue: "")
  @override
  final String language;
  @JsonKey(defaultValue: "")
  @override
  final String title;
  @JsonKey(defaultValue: "")
  @override
  final String description;
  @JsonKey(defaultValue: false)
  @override
  final bool isAutoTranslatedTitle;
  @JsonKey(defaultValue: false)
  @override
  final bool isAutoTranslatedDescription;

  @override
  String toString() {
    return 'LdMediaModel(language: $language, title: $title, description: $description, isAutoTranslatedTitle: $isAutoTranslatedTitle, isAutoTranslatedDescription: $isAutoTranslatedDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LdMediaModel &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isAutoTranslatedTitle, isAutoTranslatedTitle) ||
                const DeepCollectionEquality().equals(
                    other.isAutoTranslatedTitle, isAutoTranslatedTitle)) &&
            (identical(other.isAutoTranslatedDescription,
                    isAutoTranslatedDescription) ||
                const DeepCollectionEquality().equals(
                    other.isAutoTranslatedDescription,
                    isAutoTranslatedDescription)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isAutoTranslatedTitle) ^
      const DeepCollectionEquality().hash(isAutoTranslatedDescription);

  @JsonKey(ignore: true)
  @override
  _$LdMediaModelCopyWith<_LdMediaModel> get copyWith =>
      __$LdMediaModelCopyWithImpl<_LdMediaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LdMediaModelToJson(this);
  }
}

abstract class _LdMediaModel implements LdMediaModel {
  const factory _LdMediaModel(
      {String language,
      String title,
      String description,
      bool isAutoTranslatedTitle,
      bool isAutoTranslatedDescription}) = _$_LdMediaModel;

  factory _LdMediaModel.fromJson(Map<String, dynamic> json) =
      _$_LdMediaModel.fromJson;

  @override
  String get language => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isAutoTranslatedTitle => throw _privateConstructorUsedError;
  @override
  bool get isAutoTranslatedDescription => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LdMediaModelCopyWith<_LdMediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}
