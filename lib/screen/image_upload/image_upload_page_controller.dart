import 'package:agmo_shop/screen/cart/cart_page_model.dart';
import 'package:agmo_shop/screen/image_upload/image_upload_page_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartPageProvider =
    StateNotifierProvider<ImageUploadPageController, ImageUploadPageModel>(
        (ref) {
  return ImageUploadPageController(widgetRef: ref);
});

class ImageUploadPageController extends StateNotifier<ImageUploadPageModel> {
  ImageUploadPageController({required this.widgetRef})
      : super(const ImageUploadPageModel());

  final StateNotifierProviderRef widgetRef;
  @override
  ImageUploadPageModel get state;
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
