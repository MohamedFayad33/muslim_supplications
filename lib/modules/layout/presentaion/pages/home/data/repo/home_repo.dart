import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/model/azkar_model.dart';

abstract class HomeRepo {
  AzkarModel getAzkarMassa();
  AzkarModel getAzkarSabah();
  AzkarModel getPostPrayer();
}
