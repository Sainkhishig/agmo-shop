import 'package:agmo_shop/admin_screen/common/hive_db/object/brand/brand.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/object/category/category.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/provider/master_box_provider.dart';
import 'package:agmo_shop/admin_screen/master/item/list/item_state.dart';
import 'package:agmo_shop/admin_screen/master/item/model/item_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

final itemDetailController =
    StateNotifierProvider<ItemDetailController, ItemState>(
        (ref) => ItemDetailController(ref: ref));
final _database = FirebaseDatabase.instance.reference();

class ItemDetailController extends StateNotifier<ItemState> {
  //#region ==================== local variable ====================
  final StateNotifierProviderRef ref;
  //#endregion ==================== local variable ====================
  void setModelListenable(WidgetRef ref) {}

  //#region ==================== constructor ====================
  ItemDetailController({required this.ref}) : super(const ItemState());
  //#endregion ==================== constructor ====================

  //#region ==================== accessor ====================
  ItemState? get facility => state;

  //#endregion ==================== accessor ====================

  //#region ==================== method ====================
  clearState() => state = const ItemState();

  void update() {
    var _todoQuery = _database.child("/item");
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

  Future<void> setMaster() async {
    await getCategoryMaster();
    await getBrandMaster();
  }

  Future<void> getCategoryMaster() async {
    var masterDB = ref.read(masterBoxProvider);
    await masterDB.box.clear();
    var lstData = [];
    var masterCategoryDB = await _database.child('category').orderByKey().get();
    final categoryDB = Map<String, dynamic>.from(masterCategoryDB.value);
    categoryDB.forEach((keyUser, value) {
      print("value;;;$value");
      final category = Category.fromRTDB(Map<String, dynamic>.from(value));
      lstData.add(category);
    });
    await masterDB.box.put("Category", lstData);
  }

  Future<void> getBrandMaster() async {
    var masterDB = ref.read(masterBoxProvider);
    await masterDB.box.clear();
    var lstData = [];
    var masterBrandDB = await _database.child('brand').orderByKey().get();
    final categoryDB = Map<String, dynamic>.from(masterBrandDB.value);
    categoryDB.forEach((keyUser, value) {
      print("value;;;$value");
      final brand = Brand.fromRTDB(Map<String, dynamic>.from(value));
      lstData.add(brand);
    });
    await masterDB.box.put("Brand", lstData);
  }

  void create(ItemModel detail) {
    // var _todoQuery = _database.child("/item");
    List<Map<String, dynamic>> lstExample = [];
    // bool responseSuccess = false;
    detail.images
        .map((e) => lstExample.add({"name": e.name, "link": e.link}))
        .toList();

    print("create start");
    final newData = <String, dynamic>{
      'code': detail.code,
      'name': detail.name,
      'categoryId': detail.categoryId,
      'brandId': detail.brandId,
      'salePrice': detail.salePrice,
      'price': detail.price,
      'images': lstExample,
      'time': DateTime.now().microsecondsSinceEpoch
    };
    _database
        .child('item')
        .push()
        .set(newData)
        .then((value) => {
              print('new data written'),
            })
        .catchError((onError) => print('could not saved data'));
  }

  // void write(ItemModel detail) {
  //   // var _todoQuery = _database.child("/item");
  //   _database.child('counter').once().then((DataSnapshot snapshot) {
  //     print('Connected to second database and read ${snapshot.value}');
  //     var count = snapshot.value;
  //     final newData = <String, dynamic>{
  //       'code': detail.code,
  //       'name': detail.name,
  //       'time': DateTime.now().microsecondsSinceEpoch
  //     };
  //     _database
  //         .child('item')
  //         .push()
  //         .set(newData)
  //         .then((value) =>
  //             {print('new data written'), updateCounter(int.parse(count))})
  //         .catchError((onError) => print('could not saved data'));
  //   });

  //   // var _todoQuery = _database.child("/user1");
  //   // _todoQuery.child("/-MqqasF6kB1Bszz3TtvU").set({
  //   //   'age': '29',
  //   //   'email': 'ari.ariuka67@gmail.com',
  //   //   'mobile': '07083539202',
  //   //   'name': 'Sainkhishig Ariunaa'
  //   // });
  // }

  // void writeData() async {
  //   // Please replace the Database URL
  //   // which we will get in “Add Realtime
  //   // Database” step with DatabaseURL
  //   var url =
  //       "https://afen-japanese-default-rtdb.firebaseio.com/" + "data.json";

  //   // (Do not remove “data.json”,keep it as it is)
  //   try {
  //     final response = await http.post(
  //       Uri.parse(url),
  //       body: json.encode({"title": "123"}),
  //     );
  //   } catch (error) {
  //     throw error;
  //   }
  // }

  //#endregion ---------- save ----------
  //#endregion ==================== method ====================
}
