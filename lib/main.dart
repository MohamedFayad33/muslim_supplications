import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/di/app_di.dart';
import 'package:muslim_supplications/core/routes_manger/route_generator.dart';
import 'package:muslim_supplications/core/routes_manger/routes.dart';
import 'package:muslim_supplications/core/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
  AppDi.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.initial,
      theme: ThemeApp.theme(context),
    );
  }
}
