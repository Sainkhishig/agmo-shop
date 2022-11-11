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
  late TextEditListWidget measureAddController;
  List<TextEditItem> lstMeasures = [];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(measureDetailController.notifier);
    controller.setModelListenable(ref);

    if (detail != null) {
      txtCode.controller.text = detail!.code;
      txtName.controller.text = detail!.name;
      print("ms${detail!.lstMeasure.length}");
      lstMeasures = (detail!.lstMeasure as List).map((e) {
        var measureWidget = AfenTextField("hemj");
        measureWidget.controller.text = "$e";
        return TextEditItem(measureWidget, Key("1"));
      }).toList();
    } else {
      lstMeasures = [
        TextEditItem(
            AfenTextField(
              "хэмжээ",
              width: 250,
            ),
            const Key("2"))
      ];
    }
    print("ds${lstMeasures.length}");
    measureAddController = TextEditListWidget(
        onClickAdd: () {
          return TextEditItem(
            AfenTextField(
              "хэмжээ",
              width: 250,
            ),
            const Key("1"),
          );
        },
        lstDragItems: lstMeasures);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            txtCode,
            txtName,
            SizedBox(height: 600, width: 500, child: measureAddController),
            SaveButton(
              onSave: () {
                save(controller);
              },
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     const Expanded(
            //       flex: 1,
            //       child: Text(
            //         "хэмжээ:",
            //         textAlign: TextAlign.start,
            //       ),
            //     ),
            //     Expanded(
            //         flex: 6,
            //         child: Column(
            //           children: [
            //             measureAddController,
            //           ],
            //         )),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     SaveButton(
            //       onSave: () {
            //         save(controller);
            //       },
            //     )
            //   ],
            // )
          ]),
    ));
  }

  save(MeasureDetailController controller) {
    var measureCode = txtCode.controller.text;
    var measureName = txtName.controller.text;
    var measures = measureAddController.lstDragItems
        .map((e) => e.valueField.controller.text.trim())
        .toList();
    Measure measure =
        Measure(measureCode, measureName, measures, DateTime.now());
    measure.userKey = detail == null ? "" : detail!.userKey;
    print("meas${measure.userKey} ${detail!.userKey}");
    controller.create(measure);
  }
}
