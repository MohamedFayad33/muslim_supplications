import 'package:muslim_supplications/core/di/app_di.dart';
import 'package:muslim_supplications/modules/layout/pages/home/data/data_souress/local_data/home_local_data_souress.dart';
import 'package:muslim_supplications/modules/layout/pages/home/data/repo/home_repo.dart';

abstract class HomeDi {
  static void setting() {
    sl
      ..registerLazySingleton<HomeLocalDataSouress>(
        () => HomeLocalDataSouressImp(),
      )
      ..registerLazySingleton<HomeRepo>(
        () => HomeRepoImp(localDataSouress: sl.get<HomeLocalDataSouress>()),
      );
  }
}
