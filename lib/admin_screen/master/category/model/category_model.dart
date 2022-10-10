class CategoryModel {
  late String code;
  late String name;
  late DateTime writeDate;
  CategoryModel(this.code, this.name, this.writeDate);
  factory CategoryModel.fromRTDB(Map<String, dynamic> data) {
    // print("datakey");
    // print((data as DataSnapshot).key);
    return CategoryModel(
        data['code'],
        data['name'],
        data['writeDate'] != null
            ? DateTime.fromMicrosecondsSinceEpoch(data['writeDate'])
            : DateTime.now());
  }
}
