import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'pyfm150/media_list.dart';
import 'pyfm150/pyfm150_controller.dart';

class Media extends HookConsumerWidget {
  const Media({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(pyfm150Controller);
    final controller = ref.read(pyfm150Controller.notifier);
    const facilityId = "3922230201001328"; // TODO

    return Row(
      children: [
        const Flexible(
          child: MediaList(),
        ),
        const VerticalDivider(thickness: 1.0, color: Colors.black12),
        // Flexible(
        //   child: controller.mode == DetailMode.registration
        //       ? const MediaRegistration(facilityId: facilityId)
        //       : MediaEdit(
        //           mode: controller.mode,
        //           fileName: ref.watch(pyfm150Controller).selectedFileName,
        //           facilityId: facilityId,
        //           typeId: controller.selectedType.id,
        //         ),
        // ),
      ],
    );
  }
}
