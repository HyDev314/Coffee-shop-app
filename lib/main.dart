import 'package:coffe_shop_app/features/home/di/injection_container.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_bloc.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_event.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/home_screen.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/product_details.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductBloc>(
      create: (context) => sl()..add(const GetProductsEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ProductDetailsScreen(),
      ),
    );
  }
}
