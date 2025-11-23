import 'package:flutter/material.dart';

const double kDesignWidth = 375.0;

class SizeConfig {
  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width < 600) {
      return width / kDesignWidth;
    } else if (width < 900) {
      return width / kDesignWidth * 0.85;
    } else {
      return width / kDesignWidth * 0.70;
    }
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double fontSize,
  }) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;

    return responsiveFontSize.clamp(fontSize * 0.8, fontSize * 1.2);
  }
}
