import 'package:agmo_shop/widget/common_widget.dart';
import 'package:agmo_shop/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translit/translit.dart';

import 'dashboard_page_controller.dart';

class DashboardPage extends HookConsumerWidget {
  DashboardPage({Key? key}) : super(key: key);

  final trans = Translit();

  final keywordController = useTextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    final controller = ref.watch(cartPageProvider.notifier);
    controller.setModelListenable(ref);

    List<Widget> lsttableServings = [];
    lsttableServings.add(Text("HOME"));
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
                  child: PageView(
                    controller: pageController,
                    children: lsttableServings,
                    onPageChanged: (value) {
                      controller.setSelectedIndex(value);
                    },
                  ),
                )
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
