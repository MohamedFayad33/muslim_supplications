import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';
import 'package:muslim_supplications/core/utils/size_config.dart';

abstract class ThemeApp {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorManager.background,

        selectedItemColor: ColorManager.activeIcon,

        unselectedItemColor: ColorManager.activeIcon,

        selectedLabelStyle: StylesManager.sectionHeader(context).copyWith(
          fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 14),
        ),

        unselectedLabelStyle: StylesManager.sectionHeader(context).copyWith(
          fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 12),
        ),

        selectedIconTheme: IconThemeData(
          color: ColorManager.activeIcon,
          size: 28,
        ),

        unselectedIconTheme: IconThemeData(
          color: ColorManager.activeIcon,
          size: 24,
        ),
      ),
    );
  }
}
