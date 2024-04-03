import 'package:coffe_shop_app/config/theme/palette.dart';
import 'package:coffe_shop_app/features/home/presentation/screens/home_screen.dart';
import 'package:coffe_shop_app/features/logic/navigation/bloc/bloc/main_screen_bloc.dart';
import 'package:coffe_shop_app/features/logic/navigation/screens/widgets/bottom_nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const List<Widget> bottomNavScreen = <Widget>[
  HomeScreen(),
  Text('Favorite Screen'),
  Text('Cart Screen'),
  Text('Notification Screen'),
];

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainScreenBloc, MainScreenState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Palette.backgroundColor,
          body: Center(
            child: bottomNavScreen.elementAt(state.tabIndex),
          ),
          bottomNavigationBar: BottomNavBarWidget(
            selectedIndex: state.tabIndex,
          ),
        );
      },
    );
  }
}
