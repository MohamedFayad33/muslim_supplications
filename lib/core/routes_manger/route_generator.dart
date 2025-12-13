import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/routes_manger/routes.dart';
import 'package:muslim_supplications/modules/layout/presentaion/layout_view.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/details_view.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (_) => const LayoutView());
      case Routes.detailsView:
        return MaterialPageRoute(
          builder: (_) => const DetailsView(),
          settings: settings,
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('No Route Found')),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
