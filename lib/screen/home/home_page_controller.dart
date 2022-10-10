import 'package:agmo_shop/screen/home/home_page_model.dart';
// import 'package:firebase_storage/firebase_storage.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final homePageProvider =
    StateNotifierProvider<HomePageController, HomePageModel>((ref) {
  return HomePageController(widgetRef: ref);
});

class HomePageController extends StateNotifier<HomePageModel> {
  HomePageController({required this.widgetRef}) : super(const HomePageModel());

  final StateNotifierProviderRef widgetRef;
  // final storage = FirebaseStorage.instanceFor(bucket: "gs://my-custom-bucket");

  @override
  HomePageModel get state;
  void setModelListenable(WidgetRef ref) {
    ref.watch(homePageProvider);
  }

  setSelectedIndex(int index) async {
    state = state.copyWith(selectedIndex: index + 1);
  }

  setSearchKey(String key) async {
    state = state.copyWith(searchKey: key);
  }
}
