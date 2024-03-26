import 'package:coffe_shop_app/core/params/params.dart';
import 'package:coffe_shop_app/features/domain/entities/product_entity.dart';
import 'package:coffe_shop_app/features/domain/reponsitories/product_repository.dart';

class GetProduct {
  final ProductRepository repository;

  GetProduct(this.repository);

  Future<ProductEntity> call({required ProductParams params}) async {
    return await repository.getProductData(params: params);
  }
}
