import 'package:coffe_shop_app/core/params/params.dart';
import 'package:coffe_shop_app/core/resources/data_state.dart';
import '../entities/product_entity.dart';

abstract class ProductRepository {
  Future<DataState<List<ProductEntity>>> getProducts();

  Future<DataState<ProductEntity>> getProductDetails(
      {required ProductParams params});
}
