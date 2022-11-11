import 'package:agmo_shop/admin_screen/master/brand/detail/brand_detail.dart';
import 'package:agmo_shop/admin_screen/master/brand/list/brand_list.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail.dart';
import 'package:agmo_shop/admin_screen/master/item/list/item_list.dart';

import 'package:agmo_shop/admin_screen/master/item/list/item_list_controller.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyafm100: 部屋タイプ RoomType
class ItemPage extends HookConsumerWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(itemListController.notifier);
    ref.watch(itemListController);
    return Row(
      children: [
        Flexible(
          child: ItemList(),
        ),
        const VerticalDivider(thickness: 1.0, color: Colors.black12),
        Flexible(
          child: ItemDetail(
            detail: controller.state.detailData,
          ),
        )
      ],
    );
  }
}
