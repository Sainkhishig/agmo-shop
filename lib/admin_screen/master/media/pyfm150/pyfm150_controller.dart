import 'package:agmo_shop/admin_screen/master/media/media_model.dart';
import 'package:agmo_shop/admin_screen/master/media/pyfm150/media_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pyfm150_model.dart';

final pyfm150Controller =
    StateNotifierProvider<Pyfm150Controller, Pyfm150Model>(
        (ref) => Pyfm150Controller(ref: ref));

class Pyfm150Controller extends StateNotifier<Pyfm150Model> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  //#endregion ==================== local variable ====================

  //#region ==================== constructor ====================
  // Pyfm150Controller({required this.ref}) : super(const Pyfm150Model());
  Pyfm150Controller({required this.ref})
      : super(const Pyfm150Model(tags: FilterTag.values)) {
    Future<void>(() async {
      await getMediaList();
    });
  }
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  List<MediaModel>? get medias => state.resultList;

  List<MediaModel> get filteredMedias {
    if (medias == null) return [];

    // フィルタなしは全件返す
    if (FilterTag.values.length == state.tags.length) return medias!;

    // Filteredが0件になる組み合わせ
    if (!hasTag(FilterTag.public) && !hasTag(FilterTag.private)) {
      return [];
    }

    // NOTE: 処理の重いtoList()を減らすため、Iterableを使用
    Iterable<MediaModel> list = [...medias!];

    // [公開中,非公開] = [true, false]
    if (hasTag(FilterTag.public) && !hasTag(FilterTag.private)) {
      list = list.where((e) => e.isPublic);
    }
    // [公開中,非公開] = [false, true]
    else if (!hasTag(FilterTag.public) && hasTag(FilterTag.private)) {
      list = list.where((e) => !e.isPublic);
    }

    return list.toList();
  }

  // String? get selectedFileName => state.selectedFileName;

  set mediaType(MediaType mediaType) {
    state = state.copyWith(type: mediaType);
    getMediaList();
  }

  // set selectedFileName(String? id) {
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

  //   state = state.copyWith(selectedFileName: id, mode: mode);
  // }

  // DetailMode get mode => state.mode;
  // set mode(DetailMode value) => state = state.copyWith(mode: value);

  SearchStatus get searchStatus => state.searchStatus;
  set searchStatus(SearchStatus value) =>
      state = state.copyWith(searchStatus: value);

  MediaType get selectedType => state.type;
  set selectedType(MediaType value) => state = state.copyWith(type: value);

  List<String> get categoryIds => state.type.id == '0'
      ? [for (var e in MediaType.values) e.id]
      : [state.type.id];
  //#endregion ==================== accessor ====================

  //#region ==================== method ====================
  //#region ---------- status ----------
  pushTag(FilterTag tag) {
    if (hasTag(tag)) return;
    state = state.copyWith(tags: [...state.tags, tag]);
  }

  popTag(FilterTag tag) =>
      state = state.copyWith(tags: [...state.tags.where((e) => e != tag)]);

  bool hasTag(FilterTag tag) => state.tags.contains(tag);
  //#endregion ---------- status ----------

  //#region ---------- search ----------

  getMediaList() async {
    searchStatus = SearchStatus.loading;

    const facilityId = "3922230201001328";

    try {
      // final response = await ref
      //     .read(mediaApiProvider)
      //     .searchMedias(facilityId, categoryIds);
      // state = state.copyWith(resultList: response);
      // searchStatus =
      //     response.isEmpty ? SearchStatus.notFound : SearchStatus.found;
    } catch (e) {
      state = state.copyWith(resultList: []);
      searchStatus = SearchStatus.error;
    }
  }

  // NOTE: Update list on save.
  //#endregion ---------- search ----------
  //#endregion ==================== method ====================
}

// NOTE: 画面ごとにFilterが異なる
enum FilterTag {
  public,
  private,
}

extension FilterTagExtension on FilterTag {
  static final typeLabels = {
    FilterTag.public: '公開中',
    FilterTag.private: '非公開',
  };

  String get label => typeLabels[this]!;
}
