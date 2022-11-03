import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/common_dropdown.dart';
import 'package:agmo_shop/admin_screen/common/widget/multi_check_filter_chip.dart';
import 'package:agmo_shop/admin_screen/master/size/model/measure.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class MeasureDropdown extends HookConsumerWidget {
  MeasureDropdown(this.dataSource,
      {Key? key,
      required this.onSelectionChanged,
      this.pickerName = "",
      this.hintText = "сонгох"})
      : super(key: key);

  /// 検索機能
  final Function(Object? selectedValue)? onSelectionChanged;
  final List<Measure> dataSource;

  Object? selectedValue;
  late String pickerName;
  late String hintText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var dropdownSourceMeasures = dataSource
        .map(
          (e) => DropdownMenuItem<CommonDropDownModel>(
            alignment: AlignmentDirectional.center,
            value: CommonDropDownModel(e.code, e.name),
            child: Text(
              e.name,
              textAlign: TextAlign.right,
            ),
            onTap: () {},
          ),
        )
        .toList();
    final MultiCheckFilterChipController measureSelectionController =
        MultiCheckFilterChipController(chipName: "Хэмжээ", chipIcon: Icons.web);
    // var itemSource = getDropItems();
    // var hasSelectedValue = selectedValue == null
    //     ? true
    //     : dataSource.any((element) => element.value == selectedValue);
    List<String> lstMeasure = [];
    return StatefulBuilder(builder: (context, setState) {
      print("build stat${lstMeasure.length}");
      measureSelectionController.dataSource = lstMeasure
          .asMap()
          .entries
          .map((e) => MultiCheckFilterModel("${e.key}", e.value))
          .toList();
      return Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 1,
                child: Text(
                  "Хэмжээ:",
                  textAlign: TextAlign.start,
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(
                  width: 450,
                  child: CommonDropdown(
                    dropdownSourceMeasures,
                    onSelectionChanged: (selectedValue) {
                      setState(
                        () {
                          var measureId =
                              (selectedValue as CommonDropDownModel).id;
                          lstMeasure = dataSource
                              .firstWhere(
                                  (element) => element.code == measureId)
                              .lstMeasure
                              .map((e) => "e")
                              .toList();
                          var name = dataSource
                              .firstWhere(
                                  (element) => element.code == measureId)
                              .name;
                          print("changed;${lstMeasure.length}");
                          print("changed;${name}");
                          // measureSelectionController.dataSource =
                          //     lstMeasure
                          //         .asMap()
                          //         .entries
                          //         .map((e) => MultiCheckFilterModel(
                          //             "${e.key}", e.value))
                          //         .toList();
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          measureSelectionController
        ],
      );
    });
  }
}
