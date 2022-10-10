import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_state.freezed.dart';
part 'brand_state.g.dart';

@freezed
abstract class BrandState with _$BrandState {
  const factory BrandState({
    @Default([]) List tags,
    @Default(null) String? selectedId,
    // @Default(PlanType.lodging) PlanType planType,
    // @Default(DetailMode.none) DetailMode mode,
    // @Default(SearchStatus.none) SearchStatus searchStatus,
    // @Default(null) List<FacilityPlanModel>? resultList,
  }) = _BrandState;
  factory BrandState.fromJson(Map<String, dynamic> json) =>
      _$BrandStateFromJson(json);
}
