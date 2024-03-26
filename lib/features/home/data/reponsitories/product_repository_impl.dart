import 'dart:io';
import 'package:dio/dio.dart';
import 'package:coffe_shop_app/core/params/params.dart';
import 'package:coffe_shop_app/core/resources/data_state.dart';
import 'package:coffe_shop_app/features/home/data/data_sources/product_api_service.dart';
import 'package:coffe_shop_app/features/home/data/models/product_model.dart';
import 'package:coffe_shop_app/features/home/domain/reponsitories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductApiService _productApiService;
  ProductRepositoryImpl(this._productApiService);

  @override
  Future<DataState<List<ProductModel>>> getProducts() async {
    try {
      final httpResponse = await _productApiService.getProducts();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioError(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioErrorType.response,
            requestOptions: httpResponse.response.requestOptions));
      }
    } on DioError catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<ProductModel>> getProductDetails(
      {required ProductParams params}) {
    throw UnimplementedError();
  }
}
