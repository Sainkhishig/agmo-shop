import 'package:agmo_shop/widget/common_check_box_list.dart';
import 'package:agmo_shop/widget/common_widget.dart';
import 'package:agmo_shop/widget/price_slider.dart';
import 'package:agmo_shop/widget/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translit/translit.dart';
import 'package:firebase_database/firebase_database.dart';
import 'home_page_controller.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);

  final trans = Translit();

  final keywordController = useTextEditingController();
  final CheckBoxListController checkBoxSexOption =
      CheckBoxListController("хүйс");
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    final controller = ref.watch(homePageProvider.notifier);
    controller.setModelListenable(ref);

    useEffect(() {
      checkBoxSexOption.dataSource = getSexSource();
    });

    // }
    return Scaffold(
      body: //Expanded(child: FlashCardListItem(flashcards: flashCard)),
          Column(
        children: [
          ElevatedButton(
            child: const Text("firebase"),
            onPressed: () {
              final dbinstance = FirebaseDatabase.instance.reference();
              dbinstance.set({'testdb': 'firebase tested', 'price': 4.99});
            },
          ),
          CustomSearchBar(keywordController, onSearch: () {
            controller.setSearchKey(keywordController.text);
          }),
          Expanded(
              child: Row(
            children: [
              Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                  border: Border.all(
                    color: Colors.grey.shade800,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    const Text("filter"),
                    checkBoxSexOption,
                    PriceSlider(
                      minValue: 0,
                      maxValue: 500000,
                    )
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                children: const [
                  Text("Result"),
                ],
              ))
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
                // if (pageController.page!.toInt() + 1 <
                //     lsttableServings.length) {
                //   controller.setSelectedIndex(pageController.page!.toInt() + 1);
                //   pageController.animateToPage(pageController.page!.toInt() + 1,
                //       duration: const Duration(milliseconds: 500),
                //       curve: Curves.ease);
                // } else if (pageController.page!.toInt() != 0) {
                //   controller.setSelectedIndex(0);
                //   pageController.animateToPage(0,
                //       duration: const Duration(milliseconds: 500),
                //       curve: Curves.ease);
                // }
              },
            )
          ],
        ),
      ),
    );
  }
}

List<CheckBoxModel> getSexSource() {
  var labels = ["эр", "эм"];
  List<CheckBoxModel> dataSource = [];

  for (int i = 0; i < labels.length; i++) {
    dataSource.add(CheckBoxModel("$i", labels[i]));
  }
  return dataSource;
}
