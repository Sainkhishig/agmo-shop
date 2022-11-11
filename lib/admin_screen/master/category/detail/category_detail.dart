import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/category/detail/category_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/category/model/category_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyfm061 : キャンセル規定編集
class CategoryDetail extends HookConsumerWidget {
  CategoryDetail({Key? key, this.detail}) : super(key: key);
  late CategoryModel? detail;
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(categoryDetailController.notifier);
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

  save(CategoryDetailController controller) {
    var categoryCode = txtCode.controller.text;
    var categoryName = txtName.controller.text;
    CategoryModel category =
        CategoryModel(categoryCode, categoryName, DateTime.now());
    controller.write(category);
  }
}
