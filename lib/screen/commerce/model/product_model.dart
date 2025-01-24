class ProductModel {
  String image;
  String name;
  int price;
  bool like;
  int reviewCount;
  String reviewRating;
  bool cart = false;

  ProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.like,
    required this.reviewCount,
    required this.reviewRating,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModel &&
          runtimeType == other.runtimeType &&
          image == other.image &&
          name == other.name &&
          price == other.price &&
          like == other.like &&
          reviewCount == other.reviewCount &&
          reviewRating == other.reviewRating;

  @override
  int get hashCode =>
      image.hashCode ^
      name.hashCode ^
      price.hashCode ^
      like.hashCode ^
      reviewCount.hashCode ^
      reviewRating.hashCode ^
      cart.hashCode;
}
