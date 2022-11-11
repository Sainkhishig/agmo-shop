class BrandModel {
  late String code;
  late String name;
  late DateTime writeDate;
  String userKey = "";
  BrandModel(this.code, this.name, this.writeDate);
  factory BrandModel.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return BrandModel(
        data['code'],
        data['name'],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
