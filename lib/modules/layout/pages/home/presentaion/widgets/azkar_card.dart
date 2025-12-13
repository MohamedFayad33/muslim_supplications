import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/widgets/shape4_widget.dart';

class AzkarCard extends StatelessWidget {
  const AzkarCard({super.key, required this.title});

  final String title;

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

            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: Center(
                  child: SingleChildScrollView(
                    child: Text(
                      title,
                      style: StylesManager.zikerText(context),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      softWrap: true,
                    ),
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
