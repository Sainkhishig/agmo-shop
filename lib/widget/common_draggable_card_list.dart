// import 'package:flutter/material.dart';
// // import 'package:flutter_reorderable_list/flutter_reorderable_list.dart' as lib;
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// enum DraggingMode {
//   iOS,
//   android,
// }

// class CommonDraggableCardList extends HookConsumerWidget {
//   CommonDraggableCardList({
//     Key? key,
//     required this.onClickAdd,
//     required this.lstDragItems,
//     this.isRemovable = true,
//     this.isCreatable = true,
//     this.onItemRemoved,
//   }) : super(key: key);
//   final List<OrderableItem> lstDragItems;

//   final bool isRemovable;
//   final bool isCreatable;

//   /// 検索機能

//   final OrderableItem Function() onClickAdd;
//   late Function(OrderableItem removedItem)? onItemRemoved;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     //  CustomDraggableCards(List<OrderableItem> lstDragItems) {
//     // Returns index of item with given key
//     int _indexOfKey(Key key) {
//       return lstDragItems.indexWhere((OrderableItem d) => d.key == key);
//     }

//     return StatefulBuilder(builder: (context, setState) {
//       bool _reorderCallback(Key item, Key newPosition) {
//         int draggingIndex = _indexOfKey(item);
//         int newPositionIndex = _indexOfKey(newPosition);

//         final draggedItem = lstDragItems[draggingIndex];
//         setState(() {
//           debugPrint("Reordering $item -> $newPosition");
//           lstDragItems.removeAt(draggingIndex);
//           lstDragItems.insert(newPositionIndex, draggedItem);
//         });
//         return true;
//       }

//       void _reorderDone(Key item) {
//         final draggedItem = lstDragItems[_indexOfKey(item)];
//         debugPrint("Reordering finished for ${draggedItem.key}}"); //
//       }

//       return lib.ReorderableList(
//           onReorder: _reorderCallback,
//           onReorderDone: _reorderDone,
//           child: ListView.builder(
//               itemCount: lstDragItems.length,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   child: Row(children: [
//                     Expanded(
//                         flex: 5,
//                         child: lib.ReorderableItem(
//                           key: lstDragItems[index].key, // ?? ValueKey("-1"), //
//                           childBuilder: (context, orderState) {
//                             return _buildRowItem(
//                               orderState,
//                               setState,
//                               lstDragItems[index],
//                             );
//                           },
//                         )),
//                   ]),
//                 );
//               }));
//     });
//   }

//   Widget _buildRowItem(lib.ReorderableItemState state, StateSetter setState,
//       OrderableItem rowItem) {
//     Widget dragHandle = lib.ReorderableListener(
//       child: Container(
//         padding: const EdgeInsets.only(right: 18.0, left: 18.0),
//         child: const Icon(
//           Icons.menu,
//           color: Colors.grey,
//           size: 30,
//         ),
//       ),
//     );

//     Widget content = SafeArea(
//       top: false,
//       bottom: false,
//       child: Opacity(
//         // hide content for placeholder
//         opacity: state == lib.ReorderableItemState.placeholder ? 0.0 : 1.0,
//         child: IntrinsicHeight(
//             child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Expanded(
//                 child: Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(flex: 5, child: rowItem.widget),
//                   Visibility(
//                     visible: lstDragItems.length != 1 && isRemovable,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.indeterminate_check_box,
//                         // color: LightTheme.primary,
//                         size: 30,
//                       ),
//                       tooltip: 'remove action',
//                       onPressed: () {
//                         setState(
//                           () {
//                             lstDragItems.remove(rowItem);
//                             onItemRemoved!.call(rowItem);
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 10,
//                     height: 50,
//                   ),
//                   Visibility(
//                     visible: isCreatable,
//                     child: IconButton(
//                       icon: const Icon(
//                         Icons.add_box,
//                         // color: LightTheme.primary,
//                         size: 30,
//                       ),
//                       tooltip: 'add action',
//                       onPressed: () {
//                         var newItem = onClickAdd.call();

//                         setState(
//                           () {
//                             lstDragItems.add(newItem);
//                           },
//                         );
//                       },
//                     ),
//                   ),
//                   dragHandle
//                 ],
//               ),
//             )),
//           ],
//         )),
//       ),
//     );

//     return content;
//   }
// }

// class OrderableItem {
//   OrderableItem(this.widget, this.key);

//   final Widget widget;

//   // Each item in reorderable list needs stable and unique key
//   final Key key;

//   OrderableItem.clone(OrderableItem randomObject)
//       : this(randomObject.widget, randomObject.key);
// }
