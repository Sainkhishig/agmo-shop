import 'package:agmo_shop/admin_screen/common/hive_db/object/brand/brand.dart';
import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/brand/detail/brand_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/brand/model/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyfm061 : キャンセル規定編集
class BrandDetail extends HookConsumerWidget {
  BrandDetail({Key? key, this.detail}) : super(key: key);
  late BrandModel? detail;
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(brandDetailController.notifier);
    controller.setModelListenable(ref);
    if (detail != null) {
      txtCode.controller.text = detail!.code;
      txtName.controller.text = detail!.name;
    }
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            txtCode,
            txtName,
            SaveButton(
              onSave: () {
                save(controller);
              },
            )
          ]),
    ));
  }

  save(BrandDetailController controller) {
    var brandCode = txtCode.controller.text;
    var brandName = txtName.controller.text;
    BrandModel brand = BrandModel(brandCode, brandName, DateTime.now());
    brand.userKey = detail == null ? "" : detail!.userKey;
    controller.create(brand);
  }
}
