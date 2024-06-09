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
      imageUrl: "assets/images/bearings.jpg",
      price: 100.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Bolt",
      category: "Car",
      imageUrl: "assets/images/bolt.jpg",
      price: 50.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Chloride Exide",
      category: "Car",
      imageUrl: "assets/images/chloreideexide_batteryacid.jpg",
      price: 250.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Turbo",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_exhaust_pipe.jpg",
      price: 150.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Motorbike Headbulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_headbulb.jpg",
      price: 120.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Xenon Bulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_xenonbulb.jpg",
      price: 70.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Lock",
      category: "Tractor",
      imageUrl: "assets/images/tractor_lock.jpg",
      price: 500.00,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: "Gasket",
      category: "Tractor",
      imageUrl: "assets/images/gasket.jpg",
      price: 1000.00,
      isRecommended: true,
      isPopular: true,
    ),
  ];
}
