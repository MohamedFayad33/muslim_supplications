import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';
import 'package:muslim_supplications/core/utils/size_config.dart';

abstract class ThemeApp {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: ColorManager.scaffolgd,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.cards,

        selectedItemColor: ColorManager.activeAicon,

        unselectedItemColor: ColorManager.inactiveIcon,

        selectedLabelStyle: StylesManager.sectionHeader(context).copyWith(
          fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 14),
        ),

        unselectedLabelStyle: StylesManager.sectionHeader(context).copyWith(
          fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 12),
        ),

        selectedIconTheme: IconThemeData(
          color: ColorManager.activeAicon,
          size: 28,
        ),

        unselectedIconTheme: IconThemeData(
          color: ColorManager.inactiveIcon,
          size: 24,
        ),
      ),

      iconTheme: IconThemeData(color: ColorManager.activeAicon),
    );
  }
}
