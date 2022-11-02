import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultiCheckFilterChipController extends HookConsumerWidget {
  MultiCheckFilterChipController({
    Key? key,
    this.chipName = "",
    this.leadingText = "",
    this.dataSource,
    this.initValues,
    this.fontColor,
    this.chipIcon,
  }) : super(key: key);

  String chipName = "";
  String leadingText = "";
  List<String>? initValues;
  List<MultiCheckFilterModel>? dataSource;
  List<String> get selectedValues => dataSource!
      .where((element) => element.isChecked)
      .map((e) => e.key)
      .toList();
  final Color? fontColor;
  final IconData? chipIcon;

  /// 検索機能
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    dataSource ??= [];
    if ((initValues ?? []).isNotEmpty) {
      dataSource!.forEach((e) {
        e.isChecked = (initValues ?? []).contains(e.key);
      });
    }

    var _selected = dataSource!.map((e) => e.isChecked).toList();

    return StatefulBuilder(builder: (context, setState) {
      Widget _buildChips() {
        List<Widget> chips = [];

        for (int i = 0; i < dataSource!.length; i++) {
          FilterChip filterChip = FilterChip(
            selected: _selected[i],
            label: Text(dataSource![i].label,
                style: TextStyle(
                  fontSize: 14,
                  color: _selected[i] ? Colors.black54 : Colors.white,
                )),
            // avatar: FlutterLogo(),
            // elevation: 8.0,
            pressElevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                side: BorderSide(color: Colors.grey.shade300)),
            checkmarkColor: Colors.black54,
            selectedColor: Colors.white,
            backgroundColor: Colors.black12,
            onSelected: (bool selected) {
              setState(() {
                _selected[i] = selected;
                dataSource![i].isChecked = selected;
              });
            },
          );

          chips.add(filterChip);
        }

        return Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Wrap(spacing: 6.0, runSpacing: 6.0, children: chips));
      }

      return leadingText.isNotEmpty
          ? ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Visibility(
                visible: leadingText.isNotEmpty,
                child: Text(leadingText),
              ),
              title: _buildChips(),
            )
          : chipName.isEmpty
              ? ListTile(contentPadding: EdgeInsets.zero, title: _buildChips())
              : ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    chipName,
                  ),
                  subtitle: _buildChips(),
                );
    });
  }
}

class MultiCheckFilterModel {
  late String key;
  late String label;
  bool isChecked;
  MultiCheckFilterModel(this.key, this.label, {this.isChecked = false});
}
