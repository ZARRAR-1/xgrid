class CartItems {
  int product_id;
  int category_id;
  String name;

  double originalPrice;

  double discountedPrice;

  CartItems({
    required this.product_id,
    required this.category_id,
    required this.discountedPrice,
    required this.originalPrice,
    required this.name,
  });

  factory CartItems.fromJson(Map<String, dynamic> json) {
    return CartItems(
      product_id: json['product_id'],
      category_id: json['category_id'],
      originalPrice: json['original_price'],
      discountedPrice: json['price_formated'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() => {
    'product_id': product_id,
    'category_id' : category_id,
    'name': name,
    'price_formated' :  discountedPrice,
    'original_price' :  originalPrice
  };
}
