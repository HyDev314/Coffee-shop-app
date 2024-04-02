import 'package:coffe_shop_app/config/theme/asset.dart';
import 'package:coffe_shop_app/config/theme/palatte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.blackColor,
      body: Center(
        child: Stack(
          children: [
            SizedBox(
              height: 600,
              child: Image.asset(
                Asset.imageStart,
                //alignment: const Alignment(0.0, 1.0),
                fit: BoxFit.fitWidth,
                //scale: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Image.asset(
                  //   Asset.imageStart,
                  //   fit: BoxFit.none,
                  // ),
                  Text(
                    'Coffee so good, your taste buds will love it.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Palette.whiteColor,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                      fontSize: 34,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'The best grain, the finest roast, the powerful flavor.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Palette.thinTextColor,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  StartButtonWidget(),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
