import 'package:coffe_shop_app/config/theme/palatte.dart';
import 'package:coffe_shop_app/features/home/presentation/widgets/app_bar_home.dart';
import 'package:coffe_shop_app/features/home/presentation/widgets/promo_card.dart';
import 'package:coffe_shop_app/features/home/presentation/widgets/search_bar.dart';
import 'package:coffe_shop_app/features/home/presentation/widgets/tab_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 280,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Palette.greyColor,
                  Palette.searchBarColor,
                ],
              )),
            ),
            const Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  AppBarHomeWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  SearchBarWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  PromoCardWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  TabControllerWidget(),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [],
      // ),
    );
  }
}
