import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/flutter_icons/my_flutter_app_icons.dart';
import 'package:muslim_supplications/modules/layout/data/models/azkar_card_model.dart';

abstract class AppConstants {
  const AppConstants();
  static const List<AzkarCardModel> azkarCardData = [
    AzkarCardModel(title: 'اذكار الصباح', icon: MyFlutterIcon.sunInv),
    AzkarCardModel(title: 'اذكار المساء ', icon: MyFlutterIcon.moon),
    AzkarCardModel(
      title: 'اذكار النوم',
      icon: Icons.airline_seat_individual_suite_sharp,
    ),
    AzkarCardModel(title: 'اذكار بعد الصلاة ', icon: MyFlutterIcon.hadeth),
  ];
}
