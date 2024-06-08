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
      name: "Bearing",
      category: "Car",
      imageUrl: "assets/images/bearings",
      price: 8.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Bolt",
      category: "Car",
      imageUrl: "assets/images/bolt.jpg",
      price: 2.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Chloride Exide",
      category: "Car",
      imageUrl: "assets/images/chlorideexide_batteryacid.jpg",
      price: 25,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Turbo",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_exhaust_pipe.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Motorbike Headbulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_headbulb.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Xenon Bulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_xenonbulb.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Lock",
      category: "Tractor",
      imageUrl: "assets/images/tractor_lock.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Gasket",
      category: "Tractor",
      imageUrl: "assets/images/gasket.jpg",
      price: 100,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
