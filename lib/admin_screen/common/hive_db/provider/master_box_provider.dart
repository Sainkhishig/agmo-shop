import 'package:agmo_shop/admin_screen/common/hive_db/boxes/hive_box_class.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/object/brand/brand.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/object/category/category.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final masterBoxProvider =
    Provider<ItemMasterBox>((ref) => throw UnimplementedError());

class ItemMasterBox extends HiveBoxClass {
  ItemMasterBox(Box box) : super(box) {
    // var person = Dictionary()
    //   ..level = 5
    //   ..word = "くるま"
    //   ..kanji = "車"
    //   ..translate = "машин"
    //   ..example = "くるまをうんてんするのがすき。"
    //   ..exampleTr = "Жолоо барих дуртай.";
    // var person2 = Dictionary()
    //   ..level = 5
    //   ..word = "たまご"
    //   ..kanji = "卵"
    //   ..translate = "ӨНДӨГ"
    //   ..example = "たまごはれいぞこにあります。"
    //   ..exampleTr = "Өндөг хөргөгчинд байгаа.";
    // box.add(person);
    // box.add(person2);

    // box.put("n5", Vocabulary(5, "くるま", "машин", "車", "くるまをうんてんするのがすき。"));
    // box.put("n5", Vocabulary(5, "りんご", "алим", "", "りんごをたべたい。"));

    // if (!box.containsKey("branchMaster")) {
    //   box.put("branchMaster", []);
    // }
  }

  // dynamic get lstN5Vocabulary => box.get("n5");
  List<Category> get categoryMaster => box.get("Category");
  List<Brand> get brandMaster => box.get("Brand");
  // set adminListColumnCount(int cnt) => box.put("adminListColumnCount", cnt);
}
