import 'package:agmo_shop/admin_screen/master/brand/list/brand_state.dart';
import 'package:agmo_shop/admin_screen/master/brand/model/brand_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

final brandDetailController =
    StateNotifierProvider<BrandDetailController, BrandState>(
        (ref) => BrandDetailController(ref: ref));
final _database = FirebaseDatabase.instance.reference();

class BrandDetailController extends StateNotifier<BrandState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  //#endregion ==================== local variable ====================
  void setModelListenable(WidgetRef ref) {}

  //#region ==================== constructor ====================
  BrandDetailController({required this.ref}) : super(const BrandState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  BrandState? get facility => state;

  //#endregion ==================== accessor ====================

  //#region ==================== method ====================
  clearState() => state = const BrandState();

  void create(BrandModel detail) {
    // var _todoQuery = _database.child("/brand");

    final newData = <String, dynamic>{
      'code': detail.code,
      'name': detail.name,
      'time': DateTime.now().microsecondsSinceEpoch
    };
    if (detail.userKey.isEmpty) {
      _database
          .child('brand')
          .push()
          .set(newData)
          .then((value) => {
                print('new data written'),
              })
          .catchError((onError) {
        print('could not saved data');
      });
    } else {
      var _todoQuery = _database.child("/brand");
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
