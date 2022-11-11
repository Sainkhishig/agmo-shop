import 'package:agmo_shop/admin_screen/master/size/list/measure_state.dart';
import 'package:agmo_shop/admin_screen/master/size/model/measure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

final measureDetailController =
    StateNotifierProvider<MeasureDetailController, MeasureState>(
        (ref) => MeasureDetailController(ref: ref));
final _database = FirebaseDatabase.instance.reference();

class MeasureDetailController extends StateNotifier<MeasureState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  //#endregion ==================== local variable ====================
  void setModelListenable(WidgetRef ref) {}

  //#region ==================== constructor ====================
  MeasureDetailController({required this.ref}) : super(const MeasureState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  MeasureState? get facility => state;

  //#endregion ==================== accessor ====================

  //#region ==================== method ====================
  clearState() => state = const MeasureState();

  void update() {
    var _todoQuery = _database.child("/measure");
    _todoQuery.child("/-MqqasF6kB1Bszz3TtvU").set({
      'age': '29',
      'email': 'updari.ariuka67@gmail.com',
      'mobile': '07083539202',
      'name': 'Sainkhishig Ariunaa',
      'time': DateTime.now().microsecondsSinceEpoch
    });
  }

  // void updateCounter(int count) {
  //   var _todoQuery = _database.child("/counter");
  //   _todoQuery.set(count++);
  // }

  Future<void> create(Measure detail) async {
    // var _todoQuery = _database.child("/measure");

    final newData = <String, dynamic>{
      'code': detail.code,
      'name': detail.name,
      'values': detail.lstMeasure,
      'time': DateTime.now().microsecondsSinceEpoch
    };
    // await (_database.child('measure').push().set(newData)).then((value) => {
    //       print('new data written'),
    //     });

    if (detail.userKey.isEmpty) {
      _database
          .child('measure')
          .push()
          .set(newData)
          .then((value) => {
                print('new data written'),
              })
          .catchError((onError) {
        print('could not saved data');
      });
    } else {
      var _todoQuery = _database.child("/measure");
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
    // .catchError((onError) => print('could not saved data'));
  }

  //#endregion ---------- save ----------
  //#endregion ==================== method ====================
}
