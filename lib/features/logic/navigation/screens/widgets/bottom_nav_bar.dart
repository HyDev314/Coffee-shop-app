import 'package:coffe_shop_app/config/theme/palatte.dart';
import 'package:coffe_shop_app/features/logic/navigation/screens/widgets/nav_bar_item.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../config/theme/asset.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      decoration: const BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarItemWidget(
              iconUrl: Asset.icoHomeNav,
              index: 0,
              selectedItemIndex: selectedIndex),
          NavBarItemWidget(
              iconUrl: Asset.icoHeartNav,
              index: 1,
              selectedItemIndex: selectedIndex),
          NavBarItemWidget(
              iconUrl: Asset.icoBagNav,
              index: 2,
              selectedItemIndex: selectedIndex),
          NavBarItemWidget(
              iconUrl: Asset.icoNotiNav,
              index: 3,
              selectedItemIndex: selectedIndex),
        ],
      ),
    );
  }
}
