class HotelModel {
  const HotelModel(
      {required this.images,
      required this.mainImage,
      required this.name,
      required this.price});
  final String name;
  final String mainImage;
  final int price;
  final Map<String, dynamic> images;

  factory HotelModel.fromJson(json) {
    return HotelModel(
        images: json['images'],
        mainImage: json['mainImage'],
        name: json['name'],
        price: json['pricePerDay']);
  }
}
