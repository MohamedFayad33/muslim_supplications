import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/flutter_icons/my_flutter_app_icons.dart';

class CustomButtomNavigationBar extends StatelessWidget {
  const CustomButtomNavigationBar({
    super.key,
    required this.index,
    required this.onTap,
  });
  final int index;
  final Function(int) onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'ملاحظات',
          icon: Icon(MyFlutterIcon.newspaper),
        ),
        BottomNavigationBarItem(
          label: 'التـذكيرات',
          icon: Icon(MyFlutterIcon.alarm),
        ),
        BottomNavigationBarItem(
          label: 'السبحه',
          icon: Icon(MyFlutterIcon.sebha),
        ),
        BottomNavigationBarItem(
          label: 'اذكاري',
          icon: Icon(MyFlutterIcon.quran),
        ),
      ],
    );
  }
}
