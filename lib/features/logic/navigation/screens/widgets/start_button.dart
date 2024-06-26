import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../config/theme/palette.dart';

class StartButtonWidget extends StatelessWidget {
  const StartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void _onStartPressed(BuildContext context) {
      Navigator.pushNamed(context, '/Home');
    }

    return ElevatedButton(
      onPressed: () => _onStartPressed(context),
      style: ElevatedButton.styleFrom(
          backgroundColor: Palette.mainColor,
          foregroundColor: Palette.whiteColor,
          minimumSize: const Size(double.infinity, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: const Text(
        'Get Started',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
