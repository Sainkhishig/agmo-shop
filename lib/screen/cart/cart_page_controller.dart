import 'package:agmo_shop/screen/cart/cart_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartPageProvider =
    StateNotifierProvider<CartPageController, CartPageModel>((ref) {
  return CartPageController(widgetRef: ref);
});

class CartPageController extends StateNotifier<CartPageModel> {
  CartPageController({required this.widgetRef}) : super(const CartPageModel());

  final StateNotifierProviderRef widgetRef;
  @override
  CartPageModel get state;
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
