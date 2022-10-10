import 'package:agmo_shop/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// pyfm060 : キャンセル規定一覧 PlanList
class PlanList extends HookConsumerWidget {
  const PlanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final FocusScopeNode _node = FocusScopeNode();
    final keywordController = useTextEditingController();

    return FocusScope(
      node: _node,
      child: FocusTraversalGroup(
        policy: OrderedTraversalPolicy(),
        child: Scaffold(
          //  key: _mainScaffoldKey,
          appBar: AppBar(
            centerTitle: true,
            foregroundColor: Colors.blueGrey,
            backgroundColor: Colors.grey.shade100,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PageTitle(),
                // RegisterButton(
                //   onClick: () {
                //     ref.read(pyfm060Controller.notifier).selectedId = "";
                //     ref.read(pyfm091Controller.notifier).clearState();
                //   },
                // ),
              ],
            ),
          ),
          body: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const TypeSelection(),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomSearchBar(keywordController, onSearch: () async {
                    // await ref
                    //     .read(pyfm060Controller.notifier)
                    //     .searchGql(keywordController.text);
                  }, hintText: "プラン名"),
                  const SizedBox(height: 10),
                  // const StatusCheckBoxes(),
                  const Divider(),
                  const Result(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.home_work_rounded),
        SizedBox(width: 10),
        Text("プラン一覧", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

// class TypeSelection extends HookConsumerWidget {
//   const TypeSelection({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, ref) {
//     return Stack(
//       alignment: Alignment.bottomLeft,
//       children: [
//         CommonDivider(
//           borderColor: LightTheme.primary,
//           borderWidth: 2.0,
//           margin: EdgeInsets.zero,
//         ),
//         ToggleButtons(
//             key: UniqueKey(),
//             isSelected: ref.watch(pyfm060Controller).type.selection,
//             children: [for (var e in PlanType.values) Text(e.label)],
//             onPressed: (index) {
//               // ref
//               // .read(pyfm060Controller.notifier)
//               // .selectedType = PlanType.values[index],
//             }),
//       ],
//     );
//   }
// }

class Result extends HookConsumerWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResultList();
    // cancellationPolicies!.isEmpty
    //     ? const Center(child: Text("データが見つかりませんでした。"))
    //     : ResultList(cancellationPolicies: cancellationPolicies);
  }
}

class ResultList extends HookConsumerWidget {
  const ResultList({
    Key? key,
  }) : super(key: key);

  // final List<FacilityPlanModel> cancellationPolicies;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final controller = ref.read(pyfm060Controller.notifier);

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          // final cancellationPolicy = cancellationPolicies[index];

          // const cardBaseColor = Colors.white;
          // final cardColor = cancellationPolicy.id == controller.selectedId
          //     ? Colors.lightBlue.shade100
          //     : cardBaseColor;

          // // ignore: prefer_function_declarations_over_variables
          // final tapAction = () => controller.selectedId = cancellationPolicy.id;

          return GestureDetector(
            // onTap: tapAction,
            child: Card(
              color: Colors.white,
              child: ListTile(
                  title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "P000002",
                      ),
                      Text(
                        "【下田あじさい香祭】会場送り特典付き",
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Center(
                      //   // ここを追加
                      //   child: Image.asset('images/planview.jpg'),
                      // ),
                      Center(
                        // ここを追加
                        child: Image(
                          image: const NetworkImage(
                            "https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/451841/item/goods_68_451841.jpg?width=750",
                          ),
                          // loadingBuilder: (context, child, loadingProgress) {
                          //   return loadingProgress == null
                          //       ? FittedBox(
                          //           child: child,
                          //         )
                          //       : const Center(
                          //           child: CircularProgressIndicator(),
                          //         );
                          // },
                          errorBuilder: (context, error, stackTrace) =>
                              Image.asset(
                            'images/planview.jpg',
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                            alignment: Alignment.center,
                          ),
                          fit: BoxFit.cover,
                          height: 500,
                          width: 500,
                          alignment: Alignment.center,
                        ),

                        //  Image.network(

                        //                         loadingBuilder: (context, child, loadingProgress) {
                        //                           return loadingProgress == null
                        //                               ? FittedBox(
                        //                                   child: child,
                        //                                 )
                        //                               : const Center(
                        //                                   child: CircularProgressIndicator(),
                        //                                 );
                        //                         },
                        //                         errorBuilder: (context, error, stackTrace) =>
                        //                             Text("Aldaa"),
                        //                       ),
                      ),
                      Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                getPlanWidget(
                                    "販売期間", "2020/01/09 ~ 2022/09/30"),
                                getPlanWidget(
                                    "掲載期間", "2020/01/09 ~ 2022/09/30"),
                                getPlanWidget(
                                    "予約受付期間", "2020/01/09 ~ 2022/09/30"),
                                getPlanWidget("予約受付締切", "前日20：00"),
                                getPlanWidget("食事設定", "夕飯付き、朝食付き"),
                                getPlanWidget("決済方法", "現地決済　オンライン決済"),
                              ],
                            )),
                      )
                    ],
                  )
                ],
              )),
            ),
          );
        },
      ),
    );
  }

  getPlanWidget(String title, String value) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 20),
              color: Colors.black,
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                  padding: const EdgeInsets.only(left: 15), child: Text(value)))
        ],
      ),
    );
  }
}

// class StatusCheckBoxes extends HookConsumerWidget {
//   const StatusCheckBoxes({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final controller = ref.read(pyfm060Controller.notifier);

//     final filterTags = FilterTag.values
//         .map<CustomFilterTagWidget>((tag) => CustomFilterTagWidget(
//             isSelected: controller.hasTag(tag),
//             tagLabel: tag.label,
//             onSelected: (value) {
//               value ? controller.pushTag(tag) : controller.popTag(tag);
//             }))
//         .toList();

//     return SizedBox(width: 800, child: Wrap(children: [...filterTags]));
//   }
// }
