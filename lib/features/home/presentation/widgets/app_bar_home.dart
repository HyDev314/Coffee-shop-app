import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../config/theme/asset.dart';
import '../../../../config/theme/palatte.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        height: 45,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.thinTextColor),
                ),
                Text(
                  'Bilzen, Tanjungbalai',
                  style: TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Palette.whiteColor),
                ),
              ],
            ),
            Container(
              width: 45,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(18)),
                image: DecorationImage(
                  image: AssetImage(Asset.imageAvatar),
                  alignment: Alignment.center,
                  fit: BoxFit.scaleDown,
                ),
              ),
              child: InkWell(
                onTap: () {
                  debugPrint('click avatar');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
