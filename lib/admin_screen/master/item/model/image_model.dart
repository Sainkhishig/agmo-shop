class ImageModel {
  late String name;
  late String link;
  ImageModel(this.name, this.link);
  factory ImageModel.fromRTDB(Map<String, dynamic> data) {
    return ImageModel(
      data['name'],
      data['link'],
    );
  }
  // factory ImageModel.toRTDB(Map<String, dynamic> data) {
  //   return {"example": data.name, "translation": data.link};
  // }
}
