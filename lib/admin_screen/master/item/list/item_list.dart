import 'package:agmo_shop/admin_screen/master/item/model/item_model.dart';
import 'package:agmo_shop/admin_screen/master/category/list/category_list_controller.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_database/firebase_database.dart';

// pyfm060 : キャンセル規定一覧 ItemList
class ItemList extends HookConsumerWidget {
  ItemList({Key? key}) : super(key: key);
  final _database = FirebaseDatabase.instance.reference();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(categoryListController.notifier);
    // controller.setModelListenable(ref);

    return Scaffold(
      body: Column(
        children: [
          StreamBuilder(
            stream: _database.child('item').orderByKey().onValue,
            builder: (context, snapshot) {
              final tilesList = <Widget>[];

              if (snapshot.hasData &&
                  (snapshot.data! as Event).snapshot.value != null) {
                // final datas = (snapshot.data! as Event).snapshot;
                // print("myUserKeydatas:$datas");
                final myUsers = Map<String, dynamic>.from(
                    (snapshot.data! as Event).snapshot.value);
                print("usercount+++:::${myUsers.length}");
                myUsers.forEach((keyUser, value) {
                  print("userkey$keyUser");
                  final nextUser =
                      ItemModel.fromRTDB(Map<String, dynamic>.from(value));
                  print("gram*${nextUser.code}");
                  final userTile = Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1.0, color: Colors.grey))),
                    child: ListTile(
                      leading: Icon(Icons.verified_user),
                      title: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(flex: 1, child: Text(nextUser.code)),
                                Expanded(flex: 2, child: Text(nextUser.name)),
                                Expanded(
                                    flex: 1, child: Text(nextUser.categoryId)),
                                Expanded(
                                    flex: 1, child: Text(nextUser.brandId)),
                                Expanded(flex: 1, child: Text(nextUser.price)),
                                Expanded(
                                    flex: 1, child: Text(nextUser.salePrice)),
                                // ListView.builder(
                                //   key: const Key('tiles-scroll'),
                                //   itemCount: nextUser.images.length,
                                //   itemBuilder:
                                //       (BuildContext context, int index) {
                                //     print("images");
                                //     print(nextUser.images);
                                //     print(nextUser.images[0].name);
                                //     print(nextUser.price);
                                //     return ListTile(
                                //         title: Column(
                                //       children: [
                                //         Text(nextUser.images[0].name),
                                //         Text(nextUser.images[0].link)
                                //       ],
                                //     ));
                                //   },
                                // ),
                                Expanded(
                                    flex: 1,
                                    child: Text(nextUser.writeDate.toString())),
                              ])
                        ],
                      ),
                      onTap: () {
                        controller.update(keyUser);
                      },
                    ),
                  );
                  tilesList.add(userTile);
                });
              }
              return Expanded(
                  child: ListView(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text("Код",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))),
                      Expanded(
                        flex: 2,
                        child: Text("Нэр",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text("Бүртгэсэн огноо",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ]),
                ...tilesList
              ]));
            },
          )
        ],
      ),
    );
  }
}
