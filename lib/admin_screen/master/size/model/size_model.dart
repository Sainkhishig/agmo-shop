class SizeModel {
  late String code;
  late String name;
  late DateTime writeDate;
  SizeModel(this.code, this.name, this.writeDate);
  factory SizeModel.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return SizeModel(
        data['code'],
        data['name'],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
