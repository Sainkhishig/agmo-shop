import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:agmo_shop/shopping_screen/cart/cart_page.dart';
import 'package:agmo_shop/shopping_screen/favourite/favourite_page.dart';
import 'package:agmo_shop/shopping_screen/home/home_page.dart';
import 'package:agmo_shop/shopping_screen/item_detail/item_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'common_page_controller.dart';

class CommonPage extends StatelessWidget {
  const CommonPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Агмо шоп',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        // primarySwatch: Colors.blue,
      ),
      home: UserCommonPage(),
    );
  }
}

class UserCommonPage extends HookConsumerWidget {
  UserCommonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(commonPageProvider.notifier);
    controller.setModelListenable(ref);

    return AdaptiveNavigationScaffold(
      appBar: AdaptiveAppBar(
        title: Text(lstMenu[controller.state.selectedIndex].name),
        actions: [
          ButtonBar(
            children: [
              IconButton(
                  onPressed: () {
                    controller.setGameMode(!controller.state.isGameMode);
                  },
                  icon: const Icon(Icons.flip)),
            ],
          ),
          Visibility(
              visible: controller.state.selectedIndex == 1,
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DropdownButton(
                    value: controller.state.masterDataDestination,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                    items: lstMenu
                        .map((e) => DropdownMenuItem(
                              value: e.destination,
                              child: Text(e.name),
                            ))
                        .toList(),
                    onChanged: (lvl) async {
                      controller.setMasterDataDestination(lvl as String);
                    },
                  )))
        ],
      ),
      body: Scaffold(
          body: Row(
        children: [
          Expanded(
            child:
                Center(child: lstMenu[controller.state.selectedIndex].mainPage),
          ),
        ],
      )),
      selectedIndex: controller.state.selectedIndex,
      onDestinationSelected: (value) {
        if (value == (lstMenu.length - 1)) {
          controller.setGameMode(!controller.state.isGameMode);
        }
        controller.setSelectedIndex(value);
      },
      destinations: _buildDestinations2(context, controller),
      drawerHeader: ListTile(
        contentPadding: const EdgeInsets.all(4),
        onTap: () {
          Navigator.of(context).pop();
        },
        // tileColor: Colors.black,
        title: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              margin: const EdgeInsets.only(bottom: 20),
              constraints: const BoxConstraints.expand(height: 150.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 4.0, color: Colors.amber),
                  bottom: BorderSide(width: 4.0, color: Colors.amber),
                ),
                // color: Colors.blue
              ),
              child: Image.asset(
                "assets/images/logo-removebg-preview.png",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<AdaptiveScaffoldDestination> _buildDestinations2(
      BuildContext context, CommonPageController controller) {
    return lstMenu
        .map((menu) => AdaptiveScaffoldDestination(
              title: menu.name,
              icon: menu.icon,
            ))
        .toList();
  }
}

class Menu {
  late String name;
  late String destination;
  late IconData icon;
  late Widget mainPage;
  late Widget gamePage;
  Menu(this.name, this.destination, this.icon, this.mainPage);
}

late final lstMenu = <Menu>[
  // Menu("Үсэг", "letter", Icons.sort_by_alpha, LetterCardPage(),
  //     LetterGamePage()),
  // Menu("Тоо, Гараг, Сар өдөр", "masterData", Icons.dashboard_outlined,
  //     MasterDataPage(), MasterDataGamePage()),
  // Menu("Тоо тоолох нөхцөл", "number", Icons.format_list_numbered, CounterPage(),
  //     CounterGamePage()),
  // Menu("Төлөөний үг", "pronoun", Icons.person_pin_circle_outlined,
  //     PronounCardPage(), PronounGamePage()),
  Menu(
    "Эхлэл",
    "home",
    Icons.home,
    HomePage(),
  ),
  Menu("Сагс", "cart", Icons.shopping_cart_outlined, CartPage()),
  Menu(
    "Дуртай",
    "favourite",
    Icons.favorite_border,
    FavouritePage(),
  ),
  Menu(
    "Хяналт",
    "dashboard",
    Icons.dashboard_sharp,
    ItemDetailPage(),
  ),
];

// late final lstMasterMenu = <Menu>[
//   Menu("Үсэг", "letter", Icons.sort_by_alpha, LetterCardPage(),
//       LetterGamePage()),
//   Menu("Тоо, Гараг, Сар өдөр", "masterDate", Icons.dashboard_outlined,
//       MasterDataPage(), MasterDataGamePage()),
//   Menu("Тоо тоолох нөхцөл", "masterNumber", Icons.format_list_numbered,
//       CounterPage(), CounterGamePage()),
//   Menu("Төлөөний үг", "masterPronoun", Icons.person_pin_circle_outlined,
//       PronounCardPage(), PronounGamePage()),
// ];
