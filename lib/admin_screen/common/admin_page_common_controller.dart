import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'admin_common_page_model_.dart';

final commonPageProvider =
    StateNotifierProvider<CommonPageController, AdminCommonPageModel>((ref) {
  return CommonPageController(widgetRef: ref);
});

class CommonPageController extends StateNotifier<AdminCommonPageModel> {
  CommonPageController({required this.widgetRef})
      : super(const AdminCommonPageModel());

  final StateNotifierProviderRef widgetRef;
  @override
  AdminCommonPageModel get state;
  void setModelListenable(WidgetRef ref) {
    ref.watch(commonPageProvider);
  }

  setTableServingLocation(int selectedPlaceId) async {
    // var preferences = widgetRef.read(sharedPreferencesProvider);
    // await preferences.setInt("tableServingLocation", selectedPlaceId);
  }

  setSelectedIndex(int index) async {
    state = state.copyWith(selectedIndex: index, isGameMode: false);
  }

  setGameMode(bool isGameMode) async {
    state = state.copyWith(isGameMode: isGameMode);
  }
}
