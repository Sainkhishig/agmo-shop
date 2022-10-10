import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_state.freezed.dart';
part 'item_state.g.dart';

@freezed
abstract class ItemState with _$ItemState {
  const factory ItemState({
    @Default([]) List tags,
    @Default(null) String? selectedId,
    // @Default(PlanType.lodging) PlanType planType,
    // @Default(DetailMode.none) DetailMode mode,
    // @Default(SearchStatus.none) SearchStatus searchStatus,
    // @Default(null) List<FacilityPlanModel>? resultList,
  }) = _ItemState;
  factory ItemState.fromJson(Map<String, dynamic> json) =>
      _$ItemStateFromJson(json);
}
