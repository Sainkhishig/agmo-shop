import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/common/widget/text_edit_list.dart';
import 'package:agmo_shop/admin_screen/master/size/detail/measure_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/size/model/measure.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyfm061 : キャンセル規定編集
class MeasureDetail extends HookConsumerWidget {
  MeasureDetail({Key? key, this.detail}) : super(key: key);
  late Measure? detail;
  AfenTextField txtCode = AfenTextField("код");
  AfenTextField txtName = AfenTextField("нэр");
  TextEditListWidget measureAddController = TextEditListWidget(
      onClickAdd: () {
        return TextEditItem(
          AfenTextField(
            "хэмжээ",
            width: 250,
          ),
          const Key("1"),
        );
      },
      lstDragItems: [
        TextEditItem(
            AfenTextField(
              "хэмжээ",
              width: 250,
            ),
            const Key("2"))
      ]);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(measureDetailController.notifier);
    controller.setModelListenable(ref);
    if (detail != null) {
      txtCode.controller.text = detail!.code;
      txtName.controller.text = detail!.name;
    }
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            txtCode,
            txtName,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "хэмжээ:",
                    textAlign: TextAlign.start,
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        measureAddController,
                      ],
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SaveButton(
                  onSave: () {
                    var measures = measureAddController.lstDragItems
                        .map((e) => e.valueField.controller.text.trim())
                        .toList();

                    save(controller, measures);
                  },
                )
              ],
            )
          ]),
    ));
  }

  save(MeasureDetailController controller, List<String> measures) {
    var measureCode = txtCode.controller.text;
    var measureName = txtName.controller.text;
    Measure measure =
        Measure(measureCode, measureName, measures, DateTime.now());
    controller.create(measure);
  }
}
