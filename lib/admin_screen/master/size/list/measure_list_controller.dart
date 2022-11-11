import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

import 'measure_state.dart';

final measureListController =
    StateNotifierProvider<MeasureListController, MeasureState>(
        (ref) => MeasureListController(ref: ref));

class MeasureListController extends StateNotifier<MeasureState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  final _database = FirebaseDatabase.instance.reference();
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  MeasureListController({required this.ref}) : super(const MeasureState());
  //#endregion ==================== constructor ====================
  setDetailData(dynamic currentExercise) async {
    state = state.copyWith(detailData: currentExercise);
  }

  clearData() async {
    state = const MeasureState();
  }
  //#region ==================== accessor ====================controller.update(keyUser);
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
