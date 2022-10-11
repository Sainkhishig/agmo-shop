import 'package:agmo_shop/shopping_screen/item_detail/item_detail_model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final itemDetailProvider =
    StateNotifierProvider<ItemDetailPageController, ItemDetailModel>((ref) {
  return ItemDetailPageController(widgetRef: ref);
});

class ItemDetailPageController extends StateNotifier<ItemDetailModel> {
  ItemDetailPageController({required this.widgetRef})
      : super(const ItemDetailModel()) {}

  final StateNotifierProviderRef widgetRef;
  @override
  ItemDetailModel get state;
  void setModelListenable(WidgetRef ref) {
    ref.watch(itemDetailProvider);
  }

//Шинэ дүрэм бүртгэх
  Future<bool> save() async {
    final dbinstance = FirebaseDatabase.instance.reference();
    bool responseSuccess = false;
    final newData = <String, dynamic>{
      'level': 5,
      'word': "ほん",
      'kanji': "本",
      'translation': "ном",
      'example': "つくえのに本がふたつあります。",
      'example_en': "つくえのに本がふたつあります。",
      'example_mn': "Ширээн дээр ном 2 ширхэг байна.",
      'time': DateTime.now().microsecondsSinceEpoch
    };
    await dbinstance
        .child('test')
        .push()
        .set(newData)
        .then((value) => {responseSuccess = true, ('DATA SAVED')})
        .catchError((onError) => print('ERROR: DATA COULD NOT SAVED'));
    return responseSuccess;
  }

  setSelectedIndex(int index) async {
    // state = state.copyWith(selectedIndex: index + 1);
  }

  setSearchKey(String key) async {
    // state = state.copyWith(searchKey: key);
  }
}
