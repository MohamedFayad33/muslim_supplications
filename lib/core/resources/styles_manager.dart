import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muslim_supplications/core/utils/size_config.dart';

TextStyle getTextStyle() {
  return GoogleFonts.amiri();
}

abstract class StylesManager {
  TextStyle pageTitle(BuildContext context) {
    return GoogleFonts.amiri(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 22),
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle sectionHeader(BuildContext context) {
    return GoogleFonts.amiri(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  TextStyle zikerText(BuildContext context) {
    return GoogleFonts.amiri(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle counterNum(BuildContext context) {
    return GoogleFonts.amiri(
      fontSize: SizeConfig.getResponsiveFontSize(context, fontSize: 48),
      fontWeight: FontWeight.bold,
    );
  }
}
