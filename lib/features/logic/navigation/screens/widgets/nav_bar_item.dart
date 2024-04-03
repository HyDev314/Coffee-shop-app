import 'package:coffe_shop_app/config/theme/palette.dart';
import 'package:coffe_shop_app/features/logic/navigation/bloc/bloc/main_screen_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/theme/asset.dart';

class NavBarItemWidget extends StatelessWidget {
  const NavBarItemWidget(
      {super.key,
      required this.iconUrl,
      required this.index,
      required this.selectedItemIndex});

  final String iconUrl;
  final int selectedItemIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MainScreenBloc>().add(TabChange(tabIndex: index));
      },
      child: SizedBox(
        height: 30,
        width: 50,
        child: Column(
          children: [
            SvgPicture.asset(
              iconUrl,
              color: index == selectedItemIndex
                  ? Palette.mainColor
                  : Palette.secondColor,
            ),
            const SizedBox(
              height: 5,
            ),
            index == selectedItemIndex
                ? SvgPicture.asset(
                    Asset.icoSelectedNav,
                  )
                : const SizedBox(
                    height: 5,
                  ),
          ],
        ),
      ),
    );
  }
}
