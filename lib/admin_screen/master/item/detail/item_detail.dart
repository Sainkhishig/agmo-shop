import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/item/model/image_model.dart';
import 'package:agmo_shop/admin_screen/master/item/model/item_model.dart';
import 'package:agmo_shop/admin_screen/master/item/widget/image_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyfm061 : キャンセル規定編集
class ItemDetail extends HookConsumerWidget {
  ItemDetail({Key? key}) : super(key: key);
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");
  ImageAddList imageController = ImageAddList(
      onClickAdd: () {
        return ImageItem(
            Row(
              children: [AfenTextField("Нэр"), AfenTextField("Холбоос")],
            ),
            Key("1"));
      },
      lstDragItems: [
        ImageItem(
            Row(
              children: [AfenTextField("Нэр"), AfenTextField("Холбоос")],
            ),
            Key("2"))
      ]);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(itemDetailController.notifier);
    controller.setModelListenable(ref);

    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txtCode,
            txtName,
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
    var images = imageController.lstDragItems
        .map((e) => ImageModel("image name", "link"))
        .toList();
    ItemModel item = ItemModel(
        itemCode, itemName, '1', '1', "20000", "25000", images, DateTime.now());
    controller.create(item);
  }
}
