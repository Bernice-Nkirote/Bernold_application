import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = [
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings",
      price: 100.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "bearings",
      category: "motorbike",
      imageUrl: "assets/images/bearings.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
