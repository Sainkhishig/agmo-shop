import 'package:agmo_shop/admin_screen/master/item/model/image_model.dart';
import 'package:agmo_shop/admin_screen/master/item/widget/image_list.dart';

class ItemModel {
  late String code;
  late String name;
  late String categoryId;
  late String brandId;
  late String price;
  late String salePrice;
  late List<ImageModel> images;
  late DateTime writeDate;
  ItemModel(this.code, this.name, this.categoryId, this.brandId, this.price,
      this.salePrice, this.images, this.writeDate);
  factory ItemModel.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return ItemModel(
        data['code'],
        data['name'],
        data['categoryId'],
        data['brandId'],
        data['price'],
        data['salePrice'],
        (data['images'] as List)
            .map((e) => ImageModel.fromRTDB(Map<String, dynamic>.from(e)))
            .toList(),
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
