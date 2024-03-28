import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String id;
  final String name;
  final String description;
  final String price;
  final String urlImage;
  final String rating;
  final String ratingNum;
  final String createAt;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.urlImage,
    required this.rating,
    required this.ratingNum,
    required this.createAt,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      price,
      urlImage,
      rating,
      ratingNum,
      createAt,
    ];
  }
}
