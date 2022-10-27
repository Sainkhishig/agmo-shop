import 'package:adaptive_navigation/adaptive_navigation.dart';
import 'package:agmo_shop/admin_screen/master/brand/detail/brand_detail.dart';
import 'package:agmo_shop/admin_screen/master/brand/list/brand_list.dart';
import 'package:agmo_shop/admin_screen/master/category/detail/category_detail.dart';
import 'package:agmo_shop/admin_screen/master/category/list/category_list.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail.dart';
import 'package:agmo_shop/admin_screen/master/item/list/item_list.dart';
import 'package:agmo_shop/admin_screen/master/size/detail/size_detail.dart';
import 'package:agmo_shop/admin_screen/master/size/list/size_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'admin_page_common_controller.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Агмо шоп',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // primarySwatch: Colors.blue,
      ),
      home: AdminCommonPage(),
    );
  }
}

class AdminCommonPage extends HookConsumerWidget {
  AdminCommonPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(commonPageProvider.notifier);
    controller.setModelListenable(ref);
    var bodyPage = !controller.state.isGameMode
        ? lstMenu[controller.state.selectedIndex].mainPage
        : lstMenu[controller.state.selectedIndex].detailPage;
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('),
        // ),
        body: AdaptiveNavigationScaffold(
      appBar: AdaptiveAppBar(
        title: Text(lstMenu[controller.state.selectedIndex].name),
        actions: [
          ButtonBar(
            children: [
              IconButton(
                  onPressed: () {
                    controller.setGameMode(!controller.state.isGameMode);
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
        ],
      ),
      body: Scaffold(
          body: Row(
        children: [
          Expanded(
            child: Center(child: bodyPage),
          ),
        ],
      )),
      selectedIndex: controller.state.selectedIndex,
      onDestinationSelected: (value) {
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
    ));
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
  late Widget detailPage;
  Menu(this.name, this.destination, this.icon, this.mainPage, this.detailPage);
}

late final lstMenu = <Menu>[
  Menu(
    "Бараа",
    "items",
    Icons.add_box,
    ItemList(),
    ItemDetail(),
  ),
  Menu(
    "Ангилал",
    "category",
    Icons.category,
    CategoryList(),
    CategoryDetail(),
  ),
  Menu(
    "Брэнд",
    "brand",
    Icons.branding_watermark,
    BrandList(),
    BrandDetail(),
  ),
  Menu(
    "Хэмжээ",
    "size",
    Icons.confirmation_number,
    SizeList(),
    SizeDetail(),
  ),
];
