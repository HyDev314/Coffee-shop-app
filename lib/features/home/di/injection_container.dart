import 'package:coffe_shop_app/features/home/data/data_sources/product_api_service.dart';
import 'package:coffe_shop_app/features/home/data/reponsitories/product_repository_impl.dart';
import 'package:coffe_shop_app/features/home/domain/reponsitories/product_repository.dart';
import 'package:coffe_shop_app/features/home/domain/usecases/get_products_usecase.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Dio
  sl.registerSingleton<Dio>(
    Dio(),
  );

  //Dependence
  sl.registerSingleton<ProductApiService>(
    ProductApiService(sl()),
  );

  sl.registerSingleton<ProductRepository>(
    ProductRepositoryImpl(sl()),
  );

  //UseCases
  sl.registerSingleton<GetProductsUseCase>(
    GetProductsUseCase(sl()),
  );

  //Bloc
  sl.registerFactory<ProductBloc>(
    () => ProductBloc(sl()),
  );
}
