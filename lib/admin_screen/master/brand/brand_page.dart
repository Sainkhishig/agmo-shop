import 'package:agmo_shop/admin_screen/master/brand/detail/brand_detail.dart';
import 'package:agmo_shop/admin_screen/master/brand/list/brand_list.dart';
import 'package:agmo_shop/admin_screen/master/brand/list/brand_list_controller.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyafm100: 部屋タイプ RoomType
class BrandPage extends HookConsumerWidget {
  const BrandPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(brandListController.notifier);
    ref.watch(brandListController);
    return Row(
      children: [
        Flexible(
          child: BrandList(),
        ),
        const VerticalDivider(thickness: 1.0, color: Colors.black12),
        Flexible(
          child: BrandDetail(
            detail: controller.state.detailData,
          ),
        )
      ],
    );
  }
}
