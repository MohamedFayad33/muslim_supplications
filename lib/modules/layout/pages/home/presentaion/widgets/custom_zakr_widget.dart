import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/widgets/shape4_widget.dart';

class CustomZakrWidget extends StatelessWidget {
  const CustomZakrWidget({
    super.key,
    required this.title,
    this.icon,
    this.color,
  });

  final String title;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(42),
      child: Card(
        color: ColorManager.cards,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Shape4Widget(rotateLeft: 1, rotateRight: 2),

            icon != null ? Icon(icon, size: 60) : const SizedBox(),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Center(
                  child: Text(
                    title,
                    style: StylesManager.zikerText(context),
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                  ),
                ),
              ),
            ),

            Shape4Widget(rotateLeft: 4, rotateRight: 3),
          ],
        ),
      ),
    );
  }
}
