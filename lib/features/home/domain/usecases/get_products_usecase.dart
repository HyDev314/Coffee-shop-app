import 'package:coffe_shop_app/core/resources/data_state.dart';
import 'package:coffe_shop_app/core/usecases/usecases.dart';
import 'package:coffe_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:coffe_shop_app/features/home/domain/reponsitories/product_repository.dart';

class GetProducts implements UseCase<DataState<List<ProductEntity>>, void> {
  final ProductRepository _productRepository;
  GetProducts(this._productRepository);

  @override
  Future<DataState<List<ProductEntity>>> call({void params}) {
    return _productRepository.getProducts();
  }
}
