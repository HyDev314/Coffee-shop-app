import 'package:coffe_shop_app/config/theme/asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../config/theme/palatte.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 52,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          color: Palette.searchBarColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 15,
            ),
            SvgPicture.asset(
              Asset.icoSearch,
              height: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            const Expanded(
              child: TextField(
                style: TextStyle(
                  color: Palette.whiteColor,
                  fontSize: 14,
                  fontFamily: 'Sora',
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration.collapsed(
                  hintText: 'Search coffee',
                  hintStyle: TextStyle(
                    color: Palette.thinTextColor,
                    fontSize: 14,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w400,
                  ),
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
                shape: BoxShape.rectangle,
                color: Palette.mainColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
              ),
              child: IconButton(
                icon: SvgPicture.asset(
                  Asset.icoFilter,
                  height: 20,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              width: 5,
            ),
          ],
        ),
      ),
    );
  }
}
