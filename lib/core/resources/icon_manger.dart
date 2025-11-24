import 'package:flutter/widgets.dart';

class MyIcons {
  MyIcons._(); // هذا يمنع إنشاء نسخة من الكلاس (Instance) لأنه مجرد حاوية للثوابت

  // اسم عائلة الخط كما عرفته في ملف pubspec.yaml
  static const String _fontFamily = 'MaterialIcons';

  // تعريف الأيقونات
  // 0xe800 هو الـ Code Point الخاص بالأيقونة (يختلف حسب ملف الخط)
  static const IconData prayer_beads = IconData(
    0xe800,
    fontFamily: _fontFamily,
  );
  static const IconData quran_book = IconData(0xe801, fontFamily: _fontFamily);
  static const IconData mosque = IconData(0xe802, fontFamily: _fontFamily);
  static const IconData backArrow = IconData(0xe800, fontFamily: _fontFamily);

  // مثال لأيقونة مدورة (Rounded) إذا كان لديك خط منفصل لها
  // static const IconData mosque_rounded = IconData(0xf123, fontFamily: 'MyIconFontRounded');
}
