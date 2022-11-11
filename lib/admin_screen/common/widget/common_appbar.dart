// import 'package:agmo_shop/admin_screen/common/widget/register_button.dart';
// import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
// import 'package:agmo_shop/provider/common_providers/shared_preferences_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// AppBar commonAppBar(
//   context,
//   WidgetRef ref,
//   String title,
// ) {
//   final VoidCallback? onClick;
//   return AppBar(
//     centerTitle: true,
//     foregroundColor: Colors.blueGrey,
//     backgroundColor: Colors.grey.shade100,
//     automaticallyImplyLeading: false,
//     title: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         RegisterButton(
//           onClick: () {
//             ref.read(grammarListController.notifier).clearData();
//           },
//         ),
//       ],
//     ),
//   );
// }
