import 'package:freezed_annotation/freezed_annotation.dart';

part 'measure_state.freezed.dart';
part 'measure_state.g.dart';

@freezed
abstract class MeasureState with _$MeasureState {
  const factory MeasureState({
    @Default([]) List tags,
    @Default(null) String? selectedId,
    @Default(null) dynamic detailData,
    // @Default(PlanType.lodging) PlanType planType,
    // @Default(DetailMode.none) DetailMode mode,
    // @Default(SearchStatus.none) SearchStatus searchStatus,
    // @Default(null) List<FacilityPlanModel>? resultList,
  }) = _MeasureState;
  factory MeasureState.fromJson(Map<String, dynamic> json) =>
      _$MeasureStateFromJson(json);
}
