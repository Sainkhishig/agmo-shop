import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_reorderable_list/flutter_reorderable_list.dart' as lib;
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum DraggingMode {
  iOS,
  android,
}

class TextEditListWidget extends HookConsumerWidget {
  TextEditListWidget({
    Key? key,
    required this.onClickAdd,
    required this.lstDragItems,
    this.isRemovable = true,
    this.isCreatable = true,
    this.onItemRemoved,
  }) : super(key: key);
  final List<TextEditItem> lstDragItems;

  final bool isRemovable;
  final bool isCreatable;

  /// 検索機能

  final TextEditItem Function() onClickAdd;
  late Function(TextEditItem removedItem)? onItemRemoved;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //  CustomDraggableCards(List<ImageItem> lstDragItems) {
    // Returns index of item with given key
    int _indexOfKey(Key key) {
      return lstDragItems.indexWhere((TextEditItem d) => d.key == key);
    }

    return StatefulBuilder(builder: (context, setState) {
      return ListView.builder(
          itemCount: lstDragItems.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Expanded(
                    flex: 5,
                    child: _buildRowItem(
                      setState,
                      lstDragItems[index],
                    )),
              ],
            );
          });
    });
  }

  Widget _buildRowItem(StateSetter setState, TextEditItem rowItem) {
    Widget content = Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: rowItem.valueField,
          ),
          Visibility(
            visible: lstDragItems.length != 1 && isRemovable,
            child: IconButton(
              icon: const Icon(
                Icons.indeterminate_check_box,
                // color: LightTheme.primary,
                size: 30,
              ),
              tooltip: 'remove action',
              onPressed: () {
                setState(
                  () {
                    lstDragItems.remove(rowItem);
                    // onItemRemoved!.call(rowItem);
                  },
                );
              },
            ),
          ),
          const SizedBox(
            width: 10,
            height: 50,
          ),
          Visibility(
            visible: isCreatable,
            child: IconButton(
              icon: const Icon(
                Icons.add_box,
                // color: LightTheme.primary,
                size: 30,
              ),
              tooltip: 'add action',
              onPressed: () {
                var newItem = onClickAdd.call();

                setState(
                  () {
                    lstDragItems.add(newItem);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );

    return content;
  }
}

class TextEditItem {
  TextEditItem(this.valueField, this.key);

  final AfenTextField valueField;

  // Each item in reorderable list needs stable and unique key
  final Key key;

  TextEditItem.clone(TextEditItem randomObject)
      : this(randomObject.valueField, randomObject.key);
}
