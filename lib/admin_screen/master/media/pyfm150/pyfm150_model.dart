import 'package:agmo_shop/admin_screen/master/media/media_model.dart';
import 'package:agmo_shop/admin_screen/master/media/pyfm150/media_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'pyfm150_controller.dart';

part 'pyfm150_model.freezed.dart';
part 'pyfm150_model.g.dart';

@freezed
abstract class Pyfm150Model with _$Pyfm150Model {
  const factory Pyfm150Model({
    @Default(MediaType.all) MediaType type,
    @Default([]) List<FilterTag> tags,
    @Default(null) List<MediaModel>? resultList,
    @Default(null) String? selectedFileName,
    @Default(SearchStatus.none) SearchStatus searchStatus,
  }) = _Pyfm150Model;
  factory Pyfm150Model.fromJson(Map<String, dynamic> json) =>
      _$Pyfm150ModelFromJson(json);
}
