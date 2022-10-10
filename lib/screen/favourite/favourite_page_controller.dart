import 'package:agmo_shop/screen/cart/cart_page_model.dart';
import 'package:agmo_shop/screen/favourite/favourite_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartPageProvider =
    StateNotifierProvider<FavouritePageController, FavouritePageModel>((ref) {
  return FavouritePageController(widgetRef: ref);
});

class FavouritePageController extends StateNotifier<FavouritePageModel> {
  FavouritePageController({required this.widgetRef})
      : super(const FavouritePageModel());

  final StateNotifierProviderRef widgetRef;
  @override
  FavouritePageModel get state;
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
