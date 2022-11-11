import 'dart:convert';

import 'package:agmo_shop/admin_screen/master/category/list/category_state.dart';
import 'package:agmo_shop/admin_screen/master/category/model/category_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;

final categoryDetailController =
    StateNotifierProvider<CategoryDetailController, CategoryState>(
        (ref) => CategoryDetailController(ref: ref));
final _database = FirebaseDatabase.instance.reference();

class CategoryDetailController extends StateNotifier<CategoryState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  //#endregion ==================== local variable ====================
  void setModelListenable(WidgetRef ref) {}

  //#region ==================== constructor ====================
  CategoryDetailController({required this.ref}) : super(const CategoryState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  CategoryState? get facility => state;

  //#endregion ==================== accessor ====================

  //#region ==================== method ====================
  clearState() => state = const CategoryState();

  Future<CategoryState?> getCancellationPolicyDetail(String uniqueId) async {
    // final response = await ref
    //     .read(facilityApiProvider)
    //     .gqlGetCancellationPolicyDetail(uniqueId);

    // if (response == null) return null;
    // state = response;

    return state;
  }

  //#endregion ---------- facility ----------
  //#region ---------- save ----------

  void write(CategoryModel detail) {
    // var _todoQuery = _database.child("/category");

    final newData = <String, dynamic>{
      'code': detail.code,
      'name': detail.name,
      'time': DateTime.now().microsecondsSinceEpoch
    };
    // _database
    //     .child('category')
    //     .push()
    //     .set(newData)
    //     .then((value) => {
    //           print('new data written'),
    //         })
    //     .catchError((onError) => print('could not saved data'));
    if (detail.userKey.isEmpty) {
      _database
          .child('category')
          .push()
          .set(newData)
          .then((value) => {
                print('new data written'),
              })
          .catchError((onError) {
        print('could not saved data');
      });
    } else {
      var _todoQuery = _database.child("/category");
      _todoQuery
          .child("/${detail.userKey}")
          .set(newData)
          .then((value) => {
                print(' data updated'),
              })
          .catchError((onError) {
        print('could not update data');
      });
    }
  }
  //#endregion ---------- save ----------
  //#endregion ==================== method ====================
}
