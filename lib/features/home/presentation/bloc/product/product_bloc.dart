import 'package:coffe_shop_app/core/resources/data_state.dart';
import 'package:coffe_shop_app/features/home/domain/usecases/get_products_usecase.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_event.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductsUseCase _getProductsUseCase;

  ProductBloc(this._getProductsUseCase) : super(const ProductStateLoading()) {
    on<GetProductsEvent>(onGetProducts);
  }

  void onGetProducts(GetProductsEvent event, Emitter<ProductState> emit) async {
    final dataState = await _getProductsUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(ProductStateSuccess(dataState.data!));
    }

    if (dataState is DataFailed) {
      emit(ProductStateError(dataState.error!));
    }
  }
}
