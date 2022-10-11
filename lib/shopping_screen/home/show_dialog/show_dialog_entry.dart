import 'package:agmo_shop/widget/common_check_box_list.dart';
import 'package:agmo_shop/widget/common_widget.dart';
import 'package:agmo_shop/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translit/translit.dart';

Future<void> showExtensionEntry(context) {
  var tcExtendTime = TextEditingController();
  var tcExtendAmount = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          ElevatedButton(
            child: const Text("キャンセル"),
            style: ElevatedButton.styleFrom(
              primary: Colors.grey,
              onPrimary: Colors.grey.shade100,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            child: const Text("延長する"),
            onPressed: () {},
          ),
        ],
        content: Form(
          key: _formKey,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: const Text("販売期間："),
                ),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    onFieldSubmitted: (value) {},
                  ),
                ),
                const Text("　~　"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      );
    },
  );
}
