import 'package:get_it/get_it.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/di/home_di.dart';

GetIt sl = GetIt.instance;

abstract class AppDi {
  static void init() {
    HomeDi.setting();
  }
}
