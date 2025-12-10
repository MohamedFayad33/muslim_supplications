import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/core/di/app_di.dart';
import 'package:muslim_supplications/core/resources/assets_manager.dart';
import 'package:muslim_supplications/core/routes_manger/routes.dart';
import 'package:muslim_supplications/modules/layout/presentaion/layout_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/repo/home_repo.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/details_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/manager/messa_azkar_bloc.dart';

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (_) => const LayoutView());
      case Routes.detailsView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MessaAzkarBloc(sl.get<HomeRepo>())
              ..add(
                GetMessaAzkarEvent(
                  path: JsonAssets.azkarMassa,
                  context: context,
                ),
              ),
            child: const DetailsView(),
          ),
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
