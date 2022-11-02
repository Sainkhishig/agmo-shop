import 'package:hive_flutter/hive_flutter.dart';
part 'measure.g.dart';

// class MeasureModel {
//   late String code;
//   late String name;
//   late List<String> lstMeasure;
//   late DateTime writeDate;
//   MeasureModel(this.code, this.name, this.lstMeasure, this.writeDate);
//   factory MeasureModel.fromRTDB(dynamic data) {
//     return MeasureModel(
//         data['code'] ?? "",
//         data['name'] ?? "",
//         data['lstMeasure'] ?? [],
//         data['writeDate'] != null
//             ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
//             : DateTime.now());
//   }
// }

@HiveType(typeId: 2)
class Measure extends HiveObject {
  @HiveField(0)
  late String code;
  @HiveField(1)
  late String name;
  @HiveField(2)
  late List<String> lstMeasure;
  @HiveField(3)
  late DateTime writeDate;
  Measure(this.code, this.name, this.lstMeasure, this.writeDate);
  factory Measure.fromRTDB(dynamic data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return Measure(
        data['code'] ?? "",
        data['name'] ?? "",
        data['lstMeasure'] ?? [],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
