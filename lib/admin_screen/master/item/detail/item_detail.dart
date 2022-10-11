import 'package:agmo_shop/admin_screen/common/hive_db/object/category/category.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/provider/master_box_provider.dart';
import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/common_check_box_list.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/item/model/image_model.dart';
import 'package:agmo_shop/admin_screen/master/item/model/item_model.dart';
import 'package:agmo_shop/admin_screen/master/item/widget/image_list.dart';
import 'package:agmo_shop/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:firebase_database/firebase_database.dart';

// pyfm061 : キャンセル規定編集
class ItemDetail extends HookConsumerWidget {
  final _database = FirebaseDatabase.instance.reference();
  ItemDetail({Key? key}) : super(key: key);
  List<Category> categoryMaster = [];
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");
  AfenDropDown dropDownCategory = AfenDropDown("Ангилал");
  AfenDropDown dropDownBrand = AfenDropDown("Үйлдвэрлэгч");
  AfenTextField txtImageLink = AfenTextField("зураг");
  ImageAddList imageController = ImageAddList(
      onClickAdd: () {
        return ImageItem(
            AfenTextField("Нэр"), AfenTextField("Холбоос"), Key("1"));
      },
      lstDragItems: [
        ImageItem(AfenTextField("Нэр"), AfenTextField("Холбоос"), Key("2"))
      ]);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(itemDetailController.notifier);
    controller.setModelListenable(ref);
    final future = useMemoized(() => controller.setMaster());
    final snapshot = useFuture(future, initialData: null);
    if (snapshot.hasError) {
      return showErrorWidget(context, "Error card", snapshot.error);
    }
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }
    var itemMaster = ref.read(masterBoxProvider);
    dropDownCategory.dataSource = itemMaster.categoryMaster
        .map((e) => DropDownModel(e.code, e.name))
        .toList();
    dropDownBrand.dataSource = itemMaster.brandMaster
        .map((e) => DropDownModel(e.code, e.name))
        .toList();

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            txtCode,
            txtName,
            txtImageLink,
            dropDownCategory,
            imageController,
            SaveButton(
              onSave: () {
                save(controller);
              },
            )
          ]),
    ));
  }

  save(ItemDetailController controller) {
    var itemCode = txtCode.controller.text;
    var itemName = txtName.controller.text;
    var mainImage = txtImageLink.controller.text.trim();
    var images = imageController.lstDragItems
        .map((e) => ImageModel(e.fieldImageName.controller.text.trim(),
            e.fieldImageLink.controller.text.trim()))
        .toList();
    ItemModel item = ItemModel(itemCode, itemName, mainImage, '1', '1', "20000",
        "25000", images, DateTime.now());
    controller.create(item);
  }
}
