import 'package:coffe_shop_app/config/theme/asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:coffe_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/palatte.dart';

class OrderScreen extends StatefulWidget {
  final ProductEntity? product;

  const OrderScreen({
    super.key,
    this.product,
  });

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    void _onBackButtonTapped(BuildContext context) {
      Navigator.of(context).pop();
    }

    int numProduct = 1;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        scrolledUnderElevation: 0,
        title: const Text(
          'Order',
          style: TextStyle(
            fontFamily: 'Sora',
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Palette.textColor,
          ),
        ),
        centerTitle: true,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Palette.grey2Color,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Palette.mainColor,
                              foregroundColor: Palette.whiteColor,
                              minimumSize: const Size(150, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: const Text(
                            'Deliver',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Palette.grey2Color.withOpacity(01),
                              foregroundColor: Palette.textColor,
                              minimumSize: const Size(150, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                          child: const Text(
                            'Pick Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Delivery Address',
                    style: TextStyle(
                        color: Palette.textColor,
                        fontFamily: 'Sora',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Jl. Kpg Sutoyo',
                    style: TextStyle(
                        color: Palette.textColor,
                        fontFamily: 'Sora',
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                    style: TextStyle(
                        color: Palette.textColor,
                        fontFamily: 'Sora',
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            foregroundColor: Palette.textColor,
                            side: const BorderSide(
                              color: Palette.thinTextColor,
                              width: 1,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                          ),
                          icon: SvgPicture.asset(
                            Asset.icoEditSquare,
                            height: 12,
                          ),
                          label: const Text("Edit Address"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        height: 30,
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            foregroundColor: Palette.textColor,
                            side: const BorderSide(
                              color: Palette.thinTextColor,
                              width: 1,
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 0),
                          ),
                          icon: SvgPicture.asset(
                            Asset.icoDocument,
                            height: 12,
                          ),
                          label: const Text("Add Note"),
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Palette.grey2Color,
                    thickness: 1,
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                              image: DecorationImage(
                                  image: NetworkImage(widget.product!.urlImage),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.product!.name,
                                style: const TextStyle(
                                    color: Palette.textColor,
                                    fontFamily: 'Sora',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                'with Cocolate',
                                style: TextStyle(
                                    color: Palette.textColor,
                                    fontFamily: 'Sora',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 28,
                            width: 28,
                            child: ElevatedButton(
                              onPressed: () {
                                if (numProduct > 1) {
                                  setState(() {
                                    numProduct -= 1;
                                  });
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(0),
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(
                                      color: Palette.grey2Color, width: 1)),
                              child: const Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 28,
                            child: Center(
                              child: Text(
                                numProduct.toString(),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sora',
                                    color: Palette.textColor),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 28,
                            width: 28,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  numProduct += 1;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(0),
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(
                                      color: Palette.grey2Color, width: 1)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              color: Palette.backgroundColor,
              thickness: 3,
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          border: Border.all(
                            color: Palette.grey2Color,
                            width: 1,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                            Asset.icoDiscount,
                            height: 24,
                          ),
                          const Text(
                            '1 Discount is applied',
                            style: TextStyle(
                              fontFamily: 'Sora',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Palette.textColor,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                            color: Palette.textColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Payment Summary',
                    style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Palette.textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Price',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textColor,
                        ),
                      ),
                      Text(
                        widget.product!.price,
                        style: const TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Palette.textColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery Fee',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textColor,
                        ),
                      ),
                      Text(
                        '\$ 0',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Palette.textColor,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Palette.backgroundColor,
                    thickness: 1,
                    height: 35,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Payment',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Palette.textColor,
                        ),
                      ),
                      Text(
                        '\$ 0',
                        style: TextStyle(
                          fontFamily: 'Sora',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Palette.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar:
          bottomNavBarWidget(numProduct * int.parse(widget.product!.price)),
    );
  }

  Container bottomNavBarWidget(int num) {
    return Container(
      height: 140,
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(Asset.icoCash),
                  const SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Palette.backgroundColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: 15, left: 65, top: 4, bottom: 4),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              '\$ $num',
                              style: const TextStyle(
                                  fontFamily: 'Sora',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.textColor),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 55,
                        decoration: const BoxDecoration(
                            color: Palette.mainColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: const Center(
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                fontFamily: 'Sora',
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    iconSize: 16,
                    icon: const Icon(
                      Icons.more_horiz_sharp,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Palette.mainColor,
                foregroundColor: Palette.whiteColor,
                minimumSize: const Size(315, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                )),
            child: const Text(
              'Order',
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
}
