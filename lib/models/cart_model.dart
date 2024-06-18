import 'package:bernold_application/models/models.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable{
  Cart();
// subtotal
  double get subtotal => products.fold(0, (total,current) => total + current.price);
// delivery fee
double deliveryFee(subtotal){
  if (subtotal >= 1000){
    return 0.0;
  } else
    return 200.00;
}
// total
double total(subtotal, deliveryFee) {
  return subtotal + deliveryFee(subtotal);
}
// calculate the free delivery
String freeDelivery(subtotal) {
  if (subtotal >= 1000) {
    return "You have free delivery";
  } else {
    double missing = 1000.00 - subtotal;
    return 'Add \Kes${missing.toStringAsFixed(2)} for Free Delivery';
  }
}

// Getters
String get subtotalString => subtotal.toStringAsFixed(2);
String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
String get freeDeliveryString => freeDelivery(subtotal);

    List<Product> products = [
    const Product(
      name: "Bearing",
      category: "Car",
      imageUrl: "assets/images/bearings.jpg",
      price: 100.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Bolt",
      category: "Car",
      imageUrl: "assets/images/bolt.jpg",
      price: 50.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Chloride Exide",
      category: "Car",
      imageUrl: "assets/images/chloreideexide_batteryacid.jpg",
      price: 250.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Turbo",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_exhaust_pipe.jpg",
      price: 150.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Motorbike Headbulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_headbulb.jpg",
      price: 120.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Xenon Bulb",
      category: "Motor Bike",
      imageUrl: "assets/images/motorbike_xenonbulb.jpg",
      price: 70.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Lock",
      category: "Tractor",
      imageUrl: "assets/images/tractor_lock.jpg",
      price: 500.00,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: "Gasket",
      category: "Tractor",
      imageUrl: "assets/images/gasket.jpg",
      price: 1000.00,
      isRecommended: true,
      isPopular: true,
    ),
  ];
  
  @override

  List<Object?> get props => [];
}
  
