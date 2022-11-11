import 'package:agmo_shop/admin_screen/master/brand/detail/brand_detail.dart';
import 'package:agmo_shop/admin_screen/master/brand/list/brand_list.dart';
import 'package:agmo_shop/admin_screen/master/category/detail/category_detail.dart';
import 'package:agmo_shop/admin_screen/master/category/list/category_list.dart';

import 'package:agmo_shop/admin_screen/master/category/list/category_list_controller.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyafm100: 部屋タイプ RoomType
class CategoryPage extends HookConsumerWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(categoryListController.notifier);
    ref.watch(categoryListController);
    return Row(
      children: [
        Flexible(
          child: CategoryList(),
        ),
        const VerticalDivider(thickness: 1.0, color: Colors.black12),
        Flexible(
          child: CategoryDetail(
            detail: controller.state.detailData,
          ),
        )
      ],
    );
  }
}
