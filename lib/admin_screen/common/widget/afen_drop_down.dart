import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AfenDropDown extends HookConsumerWidget {
  AfenDropDown(
    this.name, {
    Key? key,
    this.dataSource,
    this.value = "",
  }) : super(key: key);
  List<DropDownModel>? dataSource;
  final String name;
  String value;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatefulBuilder(builder: (context, setState) {
      // var selectedValues = values ?? [];
      return Row(
        children: [
          Text("$name:"),
          const SizedBox(
            width: 15,
          ),
          Container(
            width: 200,
            // decoration:
            //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: DropdownButtonFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              items: dataSource!.map((DropDownModel category) {
                return DropdownMenuItem(
                    value: category.keyId,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        Text(category.label),
                      ],
                    ));
              }).toList(),
              onChanged: (newValue) {
                // do other stuff with _category
                setState(() => value = newValue.toString());
              },
              value: value,
              // decoration: InputDecoration(
              //     contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              //     filled: true,
              //     fillColor: Colors.grey[200],
              //     hintText: Localization.of(context).category,
              //     errorText: errorSnapshot.data == 0
              //         ? Localization.of(context).categoryEmpty
              //         : null),
            ),
          )
        ],
      );
    });
  }
}

class DropDownModel {
  late String keyId;
  late String label;
  bool isChecked = false;
  DropDownModel(this.keyId, this.label);
}
