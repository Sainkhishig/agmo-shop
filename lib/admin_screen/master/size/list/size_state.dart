import 'package:freezed_annotation/freezed_annotation.dart';

part 'size_state.freezed.dart';
part 'size_state.g.dart';

@freezed
abstract class SizeState with _$SizeState {
  const factory SizeState({
    @Default([]) List tags,
    @Default(null) String? selectedId,
    // @Default(PlanType.lodging) PlanType planType,
    // @Default(DetailMode.none) DetailMode mode,
    // @Default(SearchStatus.none) SearchStatus searchStatus,
    // @Default(null) List<FacilityPlanModel>? resultList,
  }) = _SizeState;
  factory SizeState.fromJson(Map<String, dynamic> json) =>
      _$SizeStateFromJson(json);
}
