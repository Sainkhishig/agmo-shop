import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CheckBoxListController extends HookConsumerWidget {
  CheckBoxListController(
    this.checkBoxName, {
    Key? key,
    this.dataSource,
    this.initValues,
  }) : super(key: key);
  List<CheckBoxModel>? dataSource;
  List<String> get selectedValues => (dataSource ?? [])
      .where((element) => element.isChecked)
      .map((e) => e.key)
      .toList();
  final String checkBoxName;
  List? initValues;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    dataSource ??= [];
    dataSource!.forEach((e) {
      e.isChecked = (initValues ?? []).contains(e.key);
    });
    return StatefulBuilder(builder: (context, setState) {
      // var selectedValues = values ?? [];
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(checkBoxName),
        ListView.builder(
          shrinkWrap: true,
          itemCount: dataSource!.length,
          itemBuilder: (BuildContext context, int index) {
            var row = dataSource![index];
            // row.isChecked = (values ?? []).contains(row.key);
            return CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: row.isChecked,
              title: Text(row.label,
                  style: const TextStyle(
                      fontSize: 16.0, overflow: TextOverflow.clip)),
              onChanged: (bool? value) {
                setState(() {
                  row.isChecked = value ?? false;
                  // selectedValues.add(row.key);
                });
              },
              dense: true,
              activeColor: Colors.amber,
            );
          },
        )
      ]);
    });
  }
}

class CheckBoxModel {
  late String key;
  late String label;
  bool isChecked = false;
  CheckBoxModel(this.key, this.label);
}
