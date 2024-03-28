import '../../../../core/constants/constants.dart';
import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  const ProductModel({
    required String id,
    required String name,
    required String description,
    required String price,
    required String urlImage,
    required String rating,
    required String ratingNum,
    required String createAt,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          urlImage: urlImage,
          rating: rating,
          ratingNum: ratingNum,
          createAt: createAt,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      name: json[kName],
      id: json[kId],
      description: json[kDescription],
      price: json[kPrice],
      urlImage: json[kUrl],
      rating: json[kRating],
      ratingNum: json[kRatingNum],
      createAt: json[kCreateAt],
    );
  }
}
