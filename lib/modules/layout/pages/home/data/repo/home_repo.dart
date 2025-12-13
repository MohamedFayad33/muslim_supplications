import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/pages/home/data/data_souress/local_data/home_local_data_souress.dart';
import 'package:muslim_supplications/modules/layout/pages/home/data/model/azkar_model.dart';

abstract class HomeRepo {
  Future<List<AzkarModel>> getAzkarMassa(String path, BuildContext context);
  AzkarModel getAzkarSabah();
  AzkarModel getPostPrayer();
}

class HomeRepoImp implements HomeRepo {
  const HomeRepoImp({required HomeLocalDataSouress localDataSouress})
    : _localDataSouress = localDataSouress;

  final HomeLocalDataSouress _localDataSouress;
  @override
  Future<List<AzkarModel>> getAzkarMassa(
    String path,
    BuildContext context,
  ) async {
    return await _localDataSouress.getAzkarMassa(path, context);
  }

  @override
  AzkarModel getAzkarSabah() {
    // TODO: implement getAzkarSabah
    throw UnimplementedError();
  }

  @override
  AzkarModel getPostPrayer() {
    // TODO: implement getPostPrayer
    throw UnimplementedError();
  }
}
