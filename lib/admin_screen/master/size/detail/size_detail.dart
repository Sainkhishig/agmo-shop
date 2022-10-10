import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/size/detail/size_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/size/model/size_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'size_detail_controller.dart';

// pyfm061 : キャンセル規定編集
class SizeDetail extends HookConsumerWidget {
  SizeDetail({Key? key}) : super(key: key);
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(sizeDetailController.notifier);
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
            SaveButton(
              onSave: () {
                save(controller);
              },
            )
          ]),
    ));
  }

  save(SizeDetailController controller) {
    var sizeCode = txtCode.controller.text;
    var sizeName = txtName.controller.text;
    SizeModel size = SizeModel(sizeCode, sizeName, DateTime.now());
    controller.create(size);
  }
}
