import 'package:agmo_shop/widget/common_draggable_card_list.dart';
import 'package:agmo_shop/widget/common_widget.dart';
import 'package:agmo_shop/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translit/translit.dart';

import 'item_detail_page_controller.dart';

class ItemDetailPage extends HookConsumerWidget {
  ItemDetailPage({Key? key}) : super(key: key);

  final trans = Translit();
  // List<OrderableItem> listDragItem = [];
  final keywordController = useTextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    final controller = ref.watch(itemDetailProvider.notifier);
    controller.setModelListenable(ref);
    // listDragItem.add(OrderableItem(TextFormField(), ValueKey(1)));
    List<Widget> lsttableServings = [];
    lsttableServings.add(Text("Бараа бүртгэл"));

    // }
    return Scaffold(
      body: lsttableServings.isEmpty
          ? showEmptyDataWidget()
          : //Expanded(child: FlashCardListItem(flashcards: flashCard)),
          Column(
              children: [
                CustomSearchBar(keywordController, onSearch: () {
                  controller.setSearchKey(keywordController.text);
                }),
                Expanded(
                    child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          controller.save();
                        },
                        child: Text("add")),
                    Center(
                      // ここを追加
                      child: Image(
                        image: const NetworkImage(
                          "https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/451841/item/goods_68_451841.jpg?width=750",
                        ),
                        // loadingBuilder: (context, child, loadingProgress) {
                        //   return loadingProgress == null
                        //       ? FittedBox(
                        //           fit: BoxFit.contain,
                        //           child: child,
                        //         )
                        //       : const Center(
                        //           child: CircularProgressIndicator(),
                        //         );
                        // },
                        errorBuilder: (context, error, stackTrace) =>
                            Image.asset(
                          'images/planview.jpg',
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                          alignment: Alignment.center,
                        ),
                        fit: BoxFit.cover,
                        height: 500,
                        width: 500,
                        alignment: Alignment.center,
                      ),
                    ),
                    // CommonDraggableCardList(
                    //     onItemRemoved: (removedItem) {
                    //       // setState(() {});
                    //     },
                    //     onClickAdd: () {
                    //       TextEditingController tecNewFeeStartDay =
                    //           TextEditingController();
                    //       TextEditingController tecNewFeeEndDay =
                    //           TextEditingController();
                    //       TextEditingController tecNewFeeRate =
                    //           TextEditingController();

                    //       tecNewFeeStartDay.addListener(() {
                    //         // setState(() {});
                    //       });
                    //       tecNewFeeEndDay.addListener(() {
                    //         // setState(() {});
                    //       });
                    //       tecNewFeeRate.addListener(() {
                    //         // setState(() {});
                    //       });
                    //       // List<int> maxId =
                    //       //     listDragItem.map((e) => int.parse(e.)).toList();
                    //       var item = OrderableItem(
                    //         TextFormField(
                    //           controller: tecNewFeeRate,
                    //         ),
                    //         ValueKey(listDragItem.length + 1),
                    //         // ValueKey(maxId.reduce(max) + 1),
                    //       );
                    //       return item;
                    //     },
                    //     lstDragItems: listDragItem),
                  ],
                ))
              ],
            ),
      bottomNavigationBar: Container(
        height: 40,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              padding: const EdgeInsets.only(bottom: 4),
              iconSize: 40,
              disabledColor: Colors.grey,
              color: Colors.white,
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                if (pageController.page!.toInt() > 0) {
                  controller.setSelectedIndex(pageController.page!.toInt() - 1);
                  pageController.animateToPage(pageController.page!.toInt() - 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }
              },
            ),
            IconButton(
              padding: const EdgeInsets.only(bottom: 4),
              iconSize: 40,
              disabledColor: Colors.grey,
              color: Colors.white,
              icon: const Icon(Icons.chevron_right),
              onPressed: () {
                if (pageController.page!.toInt() + 1 <
                    lsttableServings.length) {
                  controller.setSelectedIndex(pageController.page!.toInt() + 1);
                  pageController.animateToPage(pageController.page!.toInt() + 1,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                } else if (pageController.page!.toInt() != 0) {
                  controller.setSelectedIndex(0);
                  pageController.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
