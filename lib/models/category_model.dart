import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String ImageUrl;

  const Category({
    required this.name,
    required this.ImageUrl,
  });

  @override
  List<Object?> get props => [name, ImageUrl];
  
  static List<Category> categories = [
    Category(
      name: "Car",
      ImageUrl: "https://images.pexels.com/photos/19963415/pexels-photo-19963415/free-photo-of-black-toyota-sprinter-trueno.jpeg?auto=compress&cs=tinysrgb&w=400",
    ),
    Category(
      name: "Motor Bike",
      ImageUrl: "https://images.pexels.com/photos/819805/pexels-photo-819805.jpeg?auto=compress&cs=tinysrgb&w=400",
    ),
    Category(
      name: "Tractor",
      ImageUrl: "https://images.pexels.com/photos/162639/digger-machine-machinery-construction-162639.jpeg?auto=compress&cs=tinysrgb&w=400",
    ),
  ];
}