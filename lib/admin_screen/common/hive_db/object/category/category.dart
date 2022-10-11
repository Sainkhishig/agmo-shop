import 'package:hive_flutter/hive_flutter.dart';
part 'category.g.dart';

@HiveType(typeId: 0)
class Category extends HiveObject {
  @HiveField(0)
  late String code;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late DateTime writeDate;
  Category(this.code, this.name, this.writeDate);
  factory Category.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return Category(
        data['code'],
        data['name'],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
