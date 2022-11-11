import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

import 'brand_state.dart';

final brandListController =
    StateNotifierProvider<BrandListController, BrandState>(
        (ref) => BrandListController(ref: ref));

class BrandListController extends StateNotifier<BrandState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  final _database = FirebaseDatabase.instance.reference();
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  BrandListController({required this.ref}) : super(const BrandState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  // List<BrandState>? get lstPlan => state.resultList;
  // late List<SiteModel> masterSite;
  // late List<RoomTypeModel> masterRoomType;

  setDetailData(dynamic currentExercise) async {
    state = state.copyWith(detailData: currentExercise);
  }

  clearData() async {
    state = const BrandState();
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
