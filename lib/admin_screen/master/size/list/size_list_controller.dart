import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

import 'size_state.dart';

final sizeListController = StateNotifierProvider<SizeListController, SizeState>(
    (ref) => SizeListController(ref: ref));

class SizeListController extends StateNotifier<SizeState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  final _database = FirebaseDatabase.instance.reference();
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  SizeListController({required this.ref}) : super(const SizeState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  // List<SizeState>? get lstPlan => state.resultList;
  // late List<SiteModel> masterSite;
  // late List<RoomTypeModel> masterRoomType;

  Future<void> setMasterData() async {
    // final api = ref.read(facilityApiProvider);
    // masterSite = await api.getSiteMaster("");
    // await api.getPlanYoyakuMaster("");
    // await api.getSize("", SizeType.room.id);
    // masterRoomType = await api.gqlSearchRoomTypeMaster();
    // await api.gqlSearchCancellationPolicyMaster("");

    // await api.getqu("", SizeType.room.id);
  }

  // List<SizeState>? get filteredCancellationPolicy {
  //   if (lstPlan == null) return [];

  // // フィルタなしは全件返す
  // if (FilterTag.values.length == state.tags.length) {
  //   return lstPlan!;
  // }

  // // Filteredが0件になる組み合わせ
  // if (!hasTag(FilterTag.public) && !hasTag(FilterTag.private)) {
  //   return [];
  // }

  // // NOTE: 処理の重いtoList()を減らすため、Iterableを使用
  // Iterable<SizeState> list = [...lstPlan!];

  // // [使用,不用] = [true, false]
  // if (hasTag(FilterTag.public) && !hasTag(FilterTag.private)) {
  //   list = list.where((e) => e.isPublic);
  // }
  // // [使用,不用] = [false, true]
  // else if (!hasTag(FilterTag.public) && hasTag(FilterTag.private)) {
  //   list = list.where((e) => e.isPublic);
  // }

  //   return list.toList();
  // }

  // String? get selectedId => state.selectedId;
  // set selectedId(String? id) {
  //   var mode = DetailMode.edit;
  //   switch (id) {
  //     case null:
  //       mode = DetailMode.none;
  //       break;
  //     case "":
  //       mode = DetailMode.registration;
  //       break;
  //     default:
  //       break;
  //   }

  //   state = state.copyWith(selectedId: id, mode: mode);
  // }
  void update(String uKey) {
    var _todoQuery = _database.child("/size");
    _todoQuery.child("/$uKey").set({
      'code': '29',
      'name': 'gutal',
      'time': DateTime.now().microsecondsSinceEpoch
    });
  }

  searchGql(String keyword) async {
    // searchStatus = SearchStatus.loading;

    // try {
    //   final response =
    //       await ref.read(facilityApiProvider).gqlSearchFacilityPlan(keyword);
    //   state = state.copyWith(resultList: response);
    //   searchStatus =
    //       response.isEmpty ? SearchStatus.notFound : SearchStatus.found;
    // } catch (e) {
    //   state = state.copyWith(resultList: []);
    //   searchStatus = SearchStatus.error;
    // }
  }

  //#endregion ---------- search ----------

  selecteId(String uniqueId) {
    // state = state.copyWith(selectedId: uniqueId);
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
