import 'package:flutter/widgets.dart';

class AzkarCardModel {
  final String title;
  final IconData? icon;
  final Color? color;
  final String path;

  const AzkarCardModel({
    required this.title,
    required this.icon,
    required this.path,
    this.color,
  });
}
