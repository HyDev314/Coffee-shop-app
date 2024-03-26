import 'package:coffe_shop_app/core/constants/constants.dart';
import 'package:coffe_shop_app/features/home/data/models/product_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'product_api_service.g.dart';

@RestApi(baseUrl: productBaseApiUrl)
abstract class ProductApiService {
  factory ProductApiService(Dio dio) = _ProductApiService;

  @GET('/products')
  Future<HttpResponse<List<ProductModel>>> getProducts();
}
