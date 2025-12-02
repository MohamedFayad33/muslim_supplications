import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/assets_manager.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key, required this.title, this.icon, this.color});
  final String title;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(42),
      child: Card(
        color: ColorManager.cards,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    ImageAssets.shape4,
                    height: size.height * 0.05,
                    color: ColorManager.primary,
                  ),
                ),

                RotatedBox(
                  quarterTurns: 2,
                  child: Image.asset(
                    ImageAssets.shape4,
                    height: size.height * 0.05,
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
            icon != null ? Icon(icon, size: 60) : const SizedBox(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: Text(
                title,
                style: StylesManager.zikerText(context),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RotatedBox(
                  quarterTurns: 4,
                  child: Image.asset(
                    ImageAssets.shape4,
                    height: size.height * 0.05,
                    color: ColorManager.primary,
                  ),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Image.asset(
                    ImageAssets.shape4,
                    height: size.height * 0.05,
                    color: ColorManager.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
