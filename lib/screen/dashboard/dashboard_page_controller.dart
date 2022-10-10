import 'package:agmo_shop/screen/dashboard/dashboard_page_model.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartPageProvider =
    StateNotifierProvider<DashboardPageController, DashboardPageModel>((ref) {
  return DashboardPageController(widgetRef: ref);
});

class DashboardPageController extends StateNotifier<DashboardPageModel> {
  DashboardPageController({required this.widgetRef})
      : super(const DashboardPageModel());

  final StateNotifierProviderRef widgetRef;
  @override
  DashboardPageModel get state;
  void setModelListenable(WidgetRef ref) {
    ref.watch(cartPageProvider);
  }

  setSelectedIndex(int index) async {
    state = state.copyWith(selectedIndex: index + 1);
  }

  setSearchKey(String key) async {
    state = state.copyWith(searchKey: key);
  }
}
