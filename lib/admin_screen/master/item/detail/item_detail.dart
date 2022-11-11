import 'package:agmo_shop/admin_screen/common/hive_db/object/category/category.dart';
import 'package:agmo_shop/admin_screen/common/hive_db/provider/master_box_provider.dart';
import 'package:agmo_shop/admin_screen/common/widget/afen_rich_text_field.dart';
import 'package:agmo_shop/admin_screen/common/widget/afen_text_field.dart';

import 'package:agmo_shop/admin_screen/common/widget/common_dropdown.dart';
import 'package:agmo_shop/admin_screen/common/widget/measure_dropdown.dart';
import 'package:agmo_shop/admin_screen/common/widget/multi_check_filter_chip.dart';
import 'package:agmo_shop/admin_screen/common/widget/save_button.dart';
import 'package:agmo_shop/admin_screen/master/item/detail/item_detail_controller.dart';
import 'package:agmo_shop/admin_screen/master/item/model/image_model.dart';
import 'package:agmo_shop/admin_screen/master/item/model/item_model.dart';
import 'package:agmo_shop/admin_screen/master/item/widget/image_list.dart';
import 'package:agmo_shop/admin_screen/master/size/model/measure.dart';
import 'package:agmo_shop/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:firebase_database/firebase_database.dart';

// pyfm061 : キャンセル規定編集
class ItemDetail extends HookConsumerWidget {
  final _database = FirebaseDatabase.instance.reference();
  ItemDetail({Key? key, this.detail}) : super(key: key);
  late ItemModel? detail;
  List<Category> categoryMaster = [];
  AfenTextField txtCode = AfenTextField("Код");
  AfenTextField txtName = AfenTextField("Нэр");
  AfenTextField txtPrice = AfenTextField("Үндсэн үнэ");
  AfenTextField txtSalePrice = AfenTextField("Зарах үнэ");
  AfenTextField txtTransportationFee = AfenTextField("Тээврийн зардал");
  AfenTextField txtWeight = AfenTextField("Жин");
  AfenTextField txtDimension = AfenTextField("3 хэмжээс");
  AfenRichTextField txtDescription = AfenRichTextField("Тайлбар");
  String selectedBrandId = "";
  String selectedCategoryId = "";
  List<String> lstMeasure = [];
  // AfenDropDown dropDownCategory = AfenDropDown("Ангилал");
  // AfenDropDown dropDownBrand = AfenDropDown("Үйлдвэрлэгч");
  AfenTextField txtImageLink = AfenTextField("зураг");
  final MultiCheckFilterChipController categorySelectionController =
      MultiCheckFilterChipController(chipName: "Ангилал", chipIcon: Icons.web);
  final MultiCheckFilterChipController measureSelectionController =
      MultiCheckFilterChipController(chipName: "Хэмжээ", chipIcon: Icons.web);
  ImageListWidget imageController = ImageListWidget(
      onClickAdd: () {
        return ImageItem(
          AfenTextField(
            "Нэр",
            width: 250,
          ),
          AfenTextField(
            "Холбоос",
            width: 300,
          ),
          const Key("1"),
        );
      },
      lstDragItems: [
        ImageItem(
            AfenTextField(
              "Нэр",
              width: 250,
            ),
            AfenTextField(
              "Холбоос",
              width: 350,
            ),
            const Key("2"))
      ]);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(itemDetailController.notifier);
    controller.setModelListenable(ref);
    final future = useMemoized(() => controller.setMaster());
    final snapshot = useFuture(future, initialData: null);
    if (snapshot.hasError) {
      return showErrorWidget(context, "Error card", snapshot.error);
    }
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Center(child: CircularProgressIndicator());
    }
    var itemMaster = ref.read(masterBoxProvider);
    categorySelectionController.dataSource =
        getCategorySelectionData(itemMaster.categoryMaster);

    // dropDownBrand.dataSource = itemMaster.brandMaster
    //     .map((e) => DropDownModel(e.code, e.name))
    //     .toList();

    // dropDownCategory.dataSource = itemMaster.categoryMaster
    //     .map((e) => DropDownModel(e.code, e.name))
    //     .toList();
    var dropdownSourceMeasure = itemMaster.measureMaster
        .map(
          (e) => DropdownMenuItem<CommonDropDownModel>(
            alignment: AlignmentDirectional.center,
            value: CommonDropDownModel(e.code, e.name),
            child: Text(
              e.name,
              textAlign: TextAlign.right,
            ),
            onTap: () {},
          ),
        )
        .toList();
    var dropdownSourceBrand = itemMaster.brandMaster
        .map(
          (e) => DropdownMenuItem<CommonDropDownModel>(
            alignment: AlignmentDirectional.center,
            value: CommonDropDownModel(e.code, e.name),
            child: Text(
              e.name,
              textAlign: TextAlign.right,
            ),
            onTap: () {
              print("dropDown");
            },
          ),
        )
        .toList();

    if (detail != null) {
      txtCode.controller.text = detail!.code;
      txtName.controller.text = detail!.name;
      txtPrice.controller.text = detail!.price;
      txtSalePrice.controller.text = detail!.salePrice;
      txtTransportationFee.controller.text = detail!.transportationFee;
      txtWeight.controller.text = detail!.weight;
      txtDimension.controller.text = detail!.dimension;
      txtDescription.controller.text = detail!.description;
    }
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            txtCode,
            txtName,
            txtPrice,
            txtSalePrice,
            txtTransportationFee,
            txtImageLink,
            categorySelectionController,
            txtDescription,
            // dropDownCategory,

            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Брэнд:",
                    textAlign: TextAlign.start,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    width: 450,
                    child: CommonDropdown(
                      dropdownSourceBrand,
                      onSelectionChanged: (selectedValue) {
                        print("selectedValue'$selectedValue");
                        // var dropDown= (selectedValue as CommonDropDownModel).id;
                        selectedBrandId =
                            (selectedValue as CommonDropDownModel).id;
                      },
                    ),
                  ),
                ),
              ],
            ),

            MeasureDropdown(
              itemMaster.measureMaster,
              onSelectionChanged: (selectedValue) {},
            ),
            // StatefulBuilder(builder: (context, setState) {
            //   measureSelectionController.dataSource = lstMeasure
            //       .asMap()
            //       .entries
            //       .map((e) => MultiCheckFilterModel("${e.key}", e.value))
            //       .toList();
            //   return Column(
            //     children: [
            //       Row(
            //         // mainAxisAlignment: MainAxisAlignment.start,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           const Expanded(
            //             flex: 1,
            //             child: Text(
            //               "Хэмжээ:",
            //               textAlign: TextAlign.start,
            //             ),
            //           ),
            //           Expanded(
            //             flex: 5,
            //             child: SizedBox(
            //               width: 450,
            //               child: CommonDropdown(
            //                 dropdownSourceMeasure,
            //                 onSelectionChanged: (selectedValue) {
            //                   setState(
            //                     () {
            //                       var measureId =
            //                           (selectedValue as CommonDropDownModel).id;
            //                       lstMeasure = itemMaster.measureMaster
            //                           .firstWhere((element) =>
            //                               element.code == measureId)
            //                           .lstMeasure;
            //                       // measureSelectionController.dataSource =
            //                       //     lstMeasure
            //                       //         .asMap()
            //                       //         .entries
            //                       //         .map((e) => MultiCheckFilterModel(
            //                       //             "${e.key}", e.value))
            //                       //         .toList();
            //                     },
            //                   );
            //                 },
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       measureSelectionController
            //     ],
            //   );
            // }),

            const SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  flex: 1,
                  child: Text(
                    "Зураг:",
                    textAlign: TextAlign.start,
                  ),
                ),
                Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        imageController,
                      ],
                    )),
              ],
            ),

            SaveButton(
              onSave: () {
                // categorySelection.selectedValues;
                save(controller);
              },
            )
          ]),
    ));
  }

  List<MultiCheckFilterModel> getCategorySelectionData(List<Category> source) =>
      [for (var e in source) MultiCheckFilterModel(e.code, e.name)];
  List<MultiCheckFilterModel> getMeasureSelectionData(List<Measure> source) =>
      [for (var e in source) MultiCheckFilterModel(e.code, e.name)];
  save(ItemDetailController controller) {
    var itemCode = txtCode.controller.text;
    var itemName = txtName.controller.text;
    var mainImage = txtImageLink.controller.text.trim();
    var images = imageController.lstDragItems
        .map((e) => ImageModel(e.fieldImageName.controller.text.trim(),
            e.fieldImageLink.controller.text.trim()))
        .toList();

    // var categoryId = txtDescription.controller.text;
    // var brandId = txtDescription.controller.text;
    var price = txtPrice.controller.text;
    var salePrice = txtSalePrice.controller.text;

    var transportationFee = txtTransportationFee.controller.text;
    var weight = txtWeight.controller.text;
    var dimension = txtDimension.controller.text;
    var description = txtDescription.controller.text;
    ItemModel item = ItemModel(
        itemCode,
        itemName,
        mainImage,
        selectedBrandId,
        selectedBrandId,
        price,
        salePrice,
        transportationFee,
        weight,
        dimension,
        description,
        images,
        DateTime.now());
    item.userKey = detail == null ? "" : detail!.userKey;
    controller.create(item);
  }
}
