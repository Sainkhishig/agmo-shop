import 'package:hive_flutter/hive_flutter.dart';
part 'brand.g.dart';

@HiveType(typeId: 1)
class Brand extends HiveObject {
  @HiveField(0)
  late String code;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late DateTime writeDate;

  Brand(this.code, this.name, this.writeDate);
  factory Brand.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return Brand(
        data['code'],
        data['name'],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
