import 'package:flutter/widgets.dart';

import '../../../../config/theme/asset.dart';

class PromoCardWidget extends StatelessWidget {
  const PromoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 140,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          image: DecorationImage(
            image: AssetImage(Asset.imagePromo),
            alignment: Alignment.centerLeft,
            fit: BoxFit.none,
            scale: 2,
          ),
        ),
      ),
    );
  }
}
