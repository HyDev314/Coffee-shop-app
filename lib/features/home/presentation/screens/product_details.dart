import 'package:coffe_shop_app/config/theme/asset.dart';
import 'package:coffe_shop_app/config/theme/palatte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../domain/entities/product_entity.dart';

class ProductDetailsScreen extends HookWidget {
  final ProductEntity? product;

  const ProductDetailsScreen({super.key, this.product});

  @override
  Widget build(BuildContext context) {
    void _onBackButtonTapped(BuildContext context) {
      Navigator.of(context).pop();
    }

    void _onBuyPressed(BuildContext context, ProductEntity product) {
      Navigator.pushNamed(context, '/OrderList', arguments: product);
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        title: const Text(
          'Detail',
          style: TextStyle(
            fontFamily: 'Sora',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Palette.textColor,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Asset.icoHeart),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        leadingWidth: 80,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                size: 20,
              ),
              onPressed: () => _onBackButtonTapped(context),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 225,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(18)),
                  image: DecorationImage(
                    image: NetworkImage(product!.urlImage),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                product!.name,
                style: const TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Palette.textColor),
              ),
              const Text(
                'with Chocolate',
                style: TextStyle(
                    fontFamily: 'Sora',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Palette.thinTextColor),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ratingWidget(),
                  buttonFuncWidget(),
                ],
              ),
              const Divider(
                color: Palette.backgroundColor,
                thickness: 2,
                height: 30,
              ),
              const Text(
                'Description',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Palette.textColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product!.description,
                style: const TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Palette.thinTextColor,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Size',
                style: TextStyle(
                  fontFamily: 'Sora',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Palette.textColor,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 45,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Palette.whiteColor.withOpacity(0.3),
                      border:
                          Border.all(width: 0.5, color: Palette.thinTextColor),
                    ),
                    child: const Center(
                      child: Text(
                        'S',
                        style: TextStyle(
                          color: Palette.textColor,
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Palette.mainColor.withOpacity(0.3),
                      border: Border.all(width: 1, color: Palette.mainColor),
                    ),
                    child: const Center(
                      child: Text(
                        'M',
                        style: TextStyle(
                          color: Palette.mainColor,
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 95,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Palette.whiteColor.withOpacity(0.3),
                      border:
                          Border.all(width: 0.5, color: Palette.thinTextColor),
                    ),
                    child: const Center(
                      child: Text(
                        'L',
                        style: TextStyle(
                          color: Palette.textColor,
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBarWidget(
          product, (product) => _onBuyPressed(context, product)),
    );
  }

  Container bottomNavBarWidget(
    ProductEntity? product,
    void Function(ProductEntity product)? onBuyPressed,
  ) {
    void _onTap() {
      if (onBuyPressed != null) {
        onBuyPressed(product!);
      }
    }

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 10,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Price',
                style: TextStyle(
                  color: Palette.thinTextColor,
                  fontFamily: 'Sora',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '\$ 4.65',
                style: TextStyle(
                  color: Palette.mainColor,
                  fontFamily: 'Sora',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _onTap,
            style: ElevatedButton.styleFrom(
                backgroundColor: Palette.mainColor,
                foregroundColor: Palette.whiteColor,
                minimumSize: const Size(215, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: const Text(
              'Buy Now',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buttonFuncWidget() {
    return Row(
      children: [
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Palette.backgroundColor,
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            onTap: () {},
            child: SvgPicture.asset(
              Asset.icoBean,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Palette.backgroundColor,
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            onTap: () {},
            child: SvgPicture.asset(
              Asset.icoMilk,
            ),
          ),
        ),
      ],
    );
  }

  Row ratingWidget() {
    return Row(
      children: [
        SvgPicture.asset(
          Asset.icoStar,
          height: 20,
        ),
        Text(
          ' ${product!.rating} ',
          style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Palette.textColor),
        ),
        Text(
          '(${product!.ratingNum})',
          style: const TextStyle(
              fontFamily: 'Sora',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palette.thinTextColor),
        ),
      ],
    );
  }
}
