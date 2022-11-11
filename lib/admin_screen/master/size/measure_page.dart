import 'package:agmo_shop/admin_screen/master/size/detail/measure_detail.dart';
import 'package:agmo_shop/admin_screen/master/size/list/measure_list.dart';
import 'package:agmo_shop/admin_screen/master/size/list/measure_list_controller.dart';
import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyafm100: 部屋タイプ RoomType
class MeasurePage extends HookConsumerWidget {
  const MeasurePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(measureListController.notifier);
    ref.watch(measureListController);
    return Row(
      children: [
        Flexible(
          child: MeasureList(),
        ),
        const VerticalDivider(thickness: 1.0, color: Colors.black12),
        Flexible(
          child: MeasureDetail(
            detail: controller.state.detailData,
          ),
        )
      ],
    );
  }
}
