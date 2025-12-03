import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';

class AppbarDetailsView extends StatelessWidget {
  const AppbarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 34),
        ),
        Text(
          'اذكار الصباح',
          style: StylesManager.pageTitle(
            context,
          ).copyWith(color: ColorManager.primary, fontWeight: FontWeight.w700),
        ),
        Icon(Icons.settings, size: 34),
      ],
    );
  }
}
