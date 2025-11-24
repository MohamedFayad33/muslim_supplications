import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/theme/theme_app.dart';
import 'package:muslim_supplications/modules/layout/presentaion/layout_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeApp.theme(context), home: LayoutView());
  }
}
