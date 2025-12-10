import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/assets_manager.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';

class Shape4Widget extends StatelessWidget {
  const Shape4Widget({
    super.key,
    required this.rotateLeft,
    required this.rotateRight,
  });

  final int rotateLeft;
  final int rotateRight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RotatedBox(
          quarterTurns: rotateLeft,
          child: Image.asset(
            ImageAssets.shape4,
            height: size.height * 0.05,
            color: ColorManager.primary,
          ),
        ),

        RotatedBox(
          quarterTurns: rotateRight,
          child: Image.asset(
            ImageAssets.shape4,
            height: size.height * 0.05,
            color: ColorManager.primary,
          ),
        ),
      ],
    );
  }
}
