import 'package:coffe_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/order_screen.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/product_details.dart';
import 'package:coffe_shop_app/features/logic/navigation/bloc/bloc/main_screen_bloc.dart';
import 'package:coffe_shop_app/features/logic/navigation/screens/main_screen.dart';
import 'package:coffe_shop_app/features/logic/navigation/screens/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/screens/map_screen.dart';

class AppRoute {
  static MainScreenBloc mainScreenBloc = MainScreenBloc();
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const StartScreen());

      case '/Home':
        return _materialRoute(
          BlocProvider<MainScreenBloc>.value(
            value: mainScreenBloc,
            child: const MainScreen(),
          ),
        );

      case '/ProductDetails':
        return _materialRoute(
          ProductDetailsScreen(product: settings.arguments as ProductEntity),
        );

      case '/OrderList':
        return _materialRoute(
          OrderScreen(product: settings.arguments as ProductEntity),
        );

      case '/EditAddress':
        return _materialRoute(const LocationForm());

      default:
        return _materialRoute(const StartScreen());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
