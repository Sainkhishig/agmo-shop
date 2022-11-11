import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

import 'category_state.dart';

final categoryListController =
    StateNotifierProvider<CategoryListController, CategoryState>(
        (ref) => CategoryListController(ref: ref));

class CategoryListController extends StateNotifier<CategoryState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  final _database = FirebaseDatabase.instance.reference();
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  CategoryListController({required this.ref}) : super(const CategoryState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  setDetailData(dynamic currentExercise) async {
    state = state.copyWith(detailData: currentExercise);
  }

  clearData() async {
    state = const CategoryState();
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
