import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/media/media_model.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pyfm150_controller.dart';

class MediaList extends HookConsumerWidget {
  const MediaList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FocusScope(
        node: FocusScopeNode(),
        child: FocusTraversalGroup(
          policy: OrderedTraversalPolicy(),
          child: Scaffold(
              //  key: _mainScaffoldKey,
              appBar: AppBar(
                centerTitle: true,
                automaticallyImplyLeading: false,
                foregroundColor: Colors.blueGrey,
                backgroundColor: Colors.grey.shade100,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const PageTitle(),
                    FocusTraversalOrder(
                        order: const NumericFocusOrder(1),
                        child: SaveButton(
                          onSave: () {
                            // save(controller);
                          },
                        )
                        // RegisterButton(
                        //               onClick: () {
                        //                 ref
                        //                     .read(pyfm150Controller.notifier)
                        //                     .selectedFileName = "";
                        //                 ref.read(pyfm152Controller.notifier).clearState();
                        //               },
                        //             )
                        )
                  ],
                ),
              ),
              body: Form(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: FocusTraversalOrder(
                      order: const NumericFocusOrder(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MediaTypeSelection(),
                          SizedBox(height: 16.0),
                          FocusTraversalOrder(
                            order: NumericFocusOrder(3),
                            child: StatusCheckBoxes(),
                          ),
                          SizedBox(height: 8.0),
                          Result(),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ));
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.photo_outlined),
        SizedBox(width: 10),
        Text("メディア一覧", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}

class MediaTypeSelection extends HookConsumerWidget {
  const MediaTypeSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Wrap(
      children: [
        for (var e in MediaType.values)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
            child: FilterChip(
              label: Text(e.label,
                  style: TextStyle(
                    color: Colors.white,
                  )
                  // fontSize: 14.0,
                  ),
              shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(3.0)),
                  side: BorderSide(color: Colors.grey.shade300)),
              onSelected: (bool value) =>
                  ref.read(pyfm150Controller.notifier).mediaType = e,
              selected: e == ref.watch(pyfm150Controller).type,
              selectedColor: Colors.blueGrey,
              backgroundColor: Colors.black12,
              showCheckmark: false,
            ),
          ),
      ],
    );
  }
}

class StatusCheckBoxes extends StatelessWidget {
  const StatusCheckBoxes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filterTags = FilterTag.values
        .map<FilterTagWidget>((e) => FilterTagWidget(name: e.label, tag: e))
        .toList();

    return SizedBox(width: 800, child: Wrap(children: [...filterTags]));
  }
}

class FilterTagWidget extends HookConsumerWidget {
  const FilterTagWidget({
    Key? key,
    required this.name,
    required this.tag,
  }) : super(key: key);

  final String name;
  final FilterTag tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(pyfm150Controller);
    final controller = ref.read(pyfm150Controller.notifier);

    return Padding(
      padding: const EdgeInsets.only(right: 4.0, bottom: 4.0),
      child: FilterChip(
        label: Text(
          name,
          style: TextStyle(
            fontSize: 14,
            color: controller.hasTag(tag) ? Colors.black54 : Colors.white,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(3.0)),
            side: BorderSide(color: Colors.grey.shade300)),
        selected: controller.hasTag(tag),
        checkmarkColor: Colors.black54,
        selectedColor: Colors.white,
        backgroundColor: Colors.black12,
        onSelected: (bool value) {
          value ? controller.pushTag(tag) : controller.popTag(tag);
        },
      ),
    );
  }
}

class Result extends HookConsumerWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(pyfm150Controller);

    switch (controller.searchStatus) {
      case SearchStatus.loading:
        return const Center(child: CircularProgressIndicator());
      case SearchStatus.found:
        return ResultList(
          medias: ref.read(pyfm150Controller.notifier).filteredMedias,
        );
      default:
        return Center(child: Text(controller.searchStatus.message));
    }
  }
}

class ResultList extends HookConsumerWidget {
  const ResultList({
    Key? key,
    required this.medias,
  }) : super(key: key);

  final List<MediaModel> medias;

  @override
  Widget build(BuildContext context, ref) {
    const baseImagePath = r"https://picture.liberty-resort.net/files/md/";
    const width = 184.0;
    const height = width * 9 / 16;
    // const height = width * 3 / 4;

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        for (var e in medias)
          SizedBox(
            width: width,
            child: InkWell(
              onTap: () {
                // ref.read(
                // pyfm150Controller.notifier).selectedFileName =
                //   e.fileName;
              },
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    "$baseImagePath${e.fileName}",
                    height: height,
                    width: width,
                  ),
                  Positioned(
                    // bottom: 17.0,
                    child: Container(
                      width: width,
                      height: 23.0,
                      alignment: Alignment.center,
                      color: Colors.black54,
                      child: Text("e.title",
                          style: const TextStyle(color: Colors.white)),
                    ),
                  ),
                  if (!e.isPublic)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.only(left: 4),
                        color: Colors.white,
                        child: const Icon(
                          Icons.visibility_off,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class ResultStatusTag extends StatelessWidget {
  const ResultStatusTag({
    Key? key,
    required this.status,
    required this.validLabel,
    required this.invalidLabel,
  }) : super(key: key);

  final bool status;
  final String validLabel;
  final String invalidLabel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Chip(
        label: Text(
          status ? validLabel : invalidLabel,
          style: TextStyle(
            fontSize: 12,
            color: status ? Colors.blueGrey : Colors.white,
            // backgroundColor: status ? Colors.cyan.shade300 : null,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(3.0)),
          side: BorderSide(color: Colors.grey.shade100),
        ),
        backgroundColor: status ? Colors.white : Colors.grey.shade300,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        labelPadding: const EdgeInsets.all(0),
        visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
      ),
    );
  }
}

enum SearchStatus {
  none,
  loading,
  notFound,
  found,
  error,
}

extension SearchStatusExtension on SearchStatus {
  static final typeMessages = {
    SearchStatus.none: '検索してください。',
    SearchStatus.loading: '検索実行中。。。',
    SearchStatus.notFound: 'データが見つかりませんでした。',
    SearchStatus.found: 'データが見つかりました。',
    SearchStatus.error: '検索処理実行中にエラーが発生しました。\n時間をあけてもう一度検索してください。',
  };
  String get message => typeMessages[this]!;
}

enum MediaType {
  all,
  room,
  spa,
  meal,
  faciity,
  service,
  exterior,
  scenery,
  plan,
  other,
}

extension MediaTypeExtension on MediaType {
  static final typeLabels = {
    MediaType.all: 'すべて',
    MediaType.room: 'お部屋',
    MediaType.spa: 'お風呂・温泉',
    MediaType.meal: 'お食事(料理)',
    MediaType.faciity: '施設',
    MediaType.service: 'サービス',
    MediaType.exterior: '外観',
    MediaType.scenery: '周辺・景観',
    MediaType.other: 'その他',
    MediaType.plan: 'プラン画像',
  };

  String get label => typeLabels[this]!;

  static final typeIds = {
    MediaType.all: '0',
    MediaType.room: '1',
    MediaType.spa: '2',
    MediaType.meal: '3',
    MediaType.faciity: '4',
    MediaType.service: '5',
    MediaType.exterior: '6',
    MediaType.scenery: '7',
    MediaType.other: '9',
    MediaType.plan: '8',
  };

  String get id => typeIds[this]!;

  static final typeSelections = {
    MediaType.all: [
      true,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ],
    MediaType.room: [
      false,
      true,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ],
    MediaType.spa: [
      false,
      false,
      true,
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ],
    MediaType.meal: [
      false,
      false,
      false,
      true,
      false,
      false,
      false,
      false,
      false,
      false
    ],
    MediaType.faciity: [
      false,
      false,
      false,
      false,
      true,
      false,
      false,
      false,
      false,
      false
    ],
    MediaType.service: [
      false,
      false,
      false,
      false,
      false,
      true,
      false,
      false,
      false,
      false
    ],
    MediaType.exterior: [
      false,
      false,
      false,
      false,
      false,
      false,
      true,
      false,
      false,
      false
    ],
    MediaType.scenery: [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      true,
      false,
      false
    ],
    MediaType.other: [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      true,
      false
    ],
    MediaType.plan: [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      true
    ],
  };

  List<bool> get selection => typeSelections[this]!;
}
