import 'package:coffe_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class ProductState extends Equatable {
  final List<ProductEntity>? products;
  final DioError? error;

  const ProductState({this.products, this.error});

  @override
  List<Object> get props => [products!, error!];
}

class ProductStateLoading extends ProductState {
  const ProductStateLoading();
}

class ProductStateSuccess extends ProductState {
  const ProductStateSuccess(List<ProductEntity> products)
      : super(products: products);
}

class ProductStateError extends ProductState {
  const ProductStateError(DioError error) : super(error: error);
}
