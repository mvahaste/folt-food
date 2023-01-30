class Merchant {
  final String imageUrl;
  final String title;
  final String rating;
  final String price;
  final bool hasDiscount;
  final String discount;
  final String discountedPrice;
  final String deliveryTime;

  Merchant({
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.price,
    required this.hasDiscount,
    required this.discount,
    required this.discountedPrice,
    required this.deliveryTime,
  });
}
