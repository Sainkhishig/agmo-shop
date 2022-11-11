import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';
part 'category_state.g.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState({
    @Default([]) List tags,
    @Default(null) String? selectedId,
    @Default(null) dynamic detailData,
    // @Default(PlanType.lodging) PlanType planType,
    // @Default(DetailMode.none) DetailMode mode,
    // @Default(SearchStatus.none) SearchStatus searchStatus,
    // @Default(null) List<FacilityPlanModel>? resultList,
  }) = _CategoryState;
  factory CategoryState.fromJson(Map<String, dynamic> json) =>
      _$CategoryStateFromJson(json);
}
