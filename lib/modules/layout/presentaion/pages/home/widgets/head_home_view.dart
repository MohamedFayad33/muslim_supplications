import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/assets_manager.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';

class HeadHomeView extends StatelessWidget {
  const HeadHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Row(
      children: [
        Image.asset(
          ImageAssets.shape3,
          height: size.height * 0.15,
          color: ColorManager.primary,
        ),
        Spacer(),
        RotatedBox(
          quarterTurns: 1,
          child: Image.asset(
            ImageAssets.shape3,
            height: size.height * 0.15,
            color: ColorManager.primary,
          ),
        ),
      ],
    );
  }
}
