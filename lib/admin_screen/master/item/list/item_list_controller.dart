import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

import 'item_state.dart';

final itemListController = StateNotifierProvider<ItemListController, ItemState>(
    (ref) => ItemListController(ref: ref));

class ItemListController extends StateNotifier<ItemState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  final _database = FirebaseDatabase.instance.reference();
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  ItemListController({required this.ref}) : super(const ItemState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  setDetailData(dynamic currentExercise) async {
    state = state.copyWith(detailData: currentExercise);
  }

  clearData() async {
    state = const ItemState();
  }
  //#endregion ==================== method ====================
}

// NOTE: 画面ごとにFilterが異なる
// enum FilterTag {
//   public,
//   private,
//   public,
//   public,
//   public,
// }
