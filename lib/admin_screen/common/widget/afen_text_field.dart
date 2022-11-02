import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AfenTextField extends HookConsumerWidget {
  AfenTextField(
    this.lablel, {
    Key? key,
    this.onValueChanged,
    this.width = 400,
  }) : super(key: key);

  /// 検索機能
  final VoidCallback? onValueChanged;
  final String lablel;
  final double width;

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
          padding: EdgeInsets.all(10),
          // decoration:
          //     BoxDecoration(border: Border.all(color: Colors.blueAccent)),
          width: width,
          // height: 50,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      controller: controller,
                      autofocus: true,
                      // textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: lablel,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            controller.text = '';
                          },
                        ),
                      ),
                      // onFieldSubmitted: (_) async => onSearch?.call()
                    ),
                  ),
                ],
              ),
            ],
          ));
    });
  }
}
