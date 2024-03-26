import 'package:coffe_shop_app/core/params/params.dart';
import 'package:coffe_shop_app/core/resources/data_state.dart';
import 'package:coffe_shop_app/features/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<DataState<List<ProductEntity>>> getAllData();

  Future<DataState<ProductEntity>> getProductData(
      {required ProductParams params});
}
