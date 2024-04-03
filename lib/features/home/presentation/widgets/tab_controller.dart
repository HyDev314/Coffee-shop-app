import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:coffe_shop_app/features/home/presentation/bloc/product/product_state.dart';
import 'package:coffe_shop_app/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/palette.dart';
import '../../domain/entities/product_entity.dart';
import '../bloc/product/product_bloc.dart';

class TabControllerWidget extends StatefulWidget {
  const TabControllerWidget({super.key});

  @override
  State<TabControllerWidget> createState() => _TabControllerWidgetState();
}

class _TabControllerWidgetState extends State<TabControllerWidget>
    with TickerProviderStateMixin {
  final _tabs = [
    const Tab(text: 'Cappuccino'),
    const Tab(text: 'Macchiato'),
    const Tab(text: 'Latte'),
    const Tab(text: 'Americano'),
  ];

  @override
  Widget build(BuildContext context) {
    void _onProductPressed(BuildContext context, ProductEntity product) {
      Navigator.pushNamed(context, '/ProductDetails', arguments: product);
    }

    TabController _tabController = TabController(
      length: 4,
      vsync: this,
    );

    return Column(
      children: [
        TabBar(
          padding: const EdgeInsets.only(left: 25),
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          unselectedLabelColor: Palette.textColor,
          labelColor: Palette.whiteColor,
          labelStyle: const TextStyle(
            fontFamily: 'Sora',
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          dividerHeight: 0,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          indicator: const BubbleTabIndicator(
            indicatorHeight: 38.0,
            indicatorColor: Palette.mainColor,
            tabBarIndicatorSize: TabBarIndicatorSize.tab,
            indicatorRadius: 10,
          ),
          tabs: _tabs,
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 500,
          child: TabBarView(
            controller: _tabController,
            children: [
              BlocBuilder<ProductBloc, ProductState>(
                builder: (_, state) {
                  if (state is ProductStateLoading) {
                    return const Center(child: CupertinoActivityIndicator());
                  }
                  if (state is ProductStateError) {
                    return const Center(child: Icon(Icons.refresh));
                  }
                  if (state is ProductStateSuccess) {
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.products!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20.0,
                        mainAxisSpacing: 20.0,
                        mainAxisExtent: 240,
                      ),
                      itemBuilder: (context, index) {
                        return ProductCardWidget(
                          product: state.products![index],
                          onProductPressed: (product) =>
                              _onProductPressed(context, product),
                        );
                      },
                    );
                  }
                  return const SizedBox();
                },
              ),
              const Text('Tab2'),
              const Text('Tab3'),
              const Text('Tab4'),
            ],
          ),
        ),
      ],
    );
  }
}
