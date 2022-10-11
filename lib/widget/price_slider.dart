import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PriceSlider extends HookConsumerWidget {
  PriceSlider(
      {Key? key,
      required this.minValue,
      required this.maxValue,
      this.selectedIndex,
      this.currentValue,
      this.padding = const EdgeInsets.only(top: 10)})
      : super(key: key);

  /// 検索機能
  // final VoidCallback? onSelect;
  final double minValue;
  final double maxValue;
  double? currentValue;
  final int? selectedIndex;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatefulBuilder(builder: (context, setState) {
      return ListTile(
        // width: double.maxFinite,
        title: const Text("Үнэ"),
        subtitle: Slider(
            activeColor: Colors.black,
            value: currentValue ?? minValue,
            min: minValue,
            max: maxValue,
            divisions: 50,
            label: currentValue.toString(),
            onChangeEnd: (value) {},
            onChanged: (double value) {
              setState(() {
                currentValue = value;
              });
            }),
      );
    });
  }
}
