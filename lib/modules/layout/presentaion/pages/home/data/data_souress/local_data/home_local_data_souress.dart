import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/model/azkar_model.dart';

abstract class HomeLocalDataSouress {
  Future<List<AzkarModel>> getAzkarMassa(String path, BuildContext context);
  Future<AzkarModel> getAzkarSabah(String path);
  Future<AzkarModel> getPostPrayer(String path);
}

class HomeLocalDataSouressImp implements HomeLocalDataSouress {
  @override
  Future<List<AzkarModel>> getAzkarMassa(
    String path,
    BuildContext context,
  ) async {
    List<AzkarModel> azkarMassa = [];
    String myJson = await DefaultAssetBundle.of(context).loadString(path);
    Map data = jsonDecode(myJson);
    List contant = data['content'];
    for (var zeker in contant) {
      azkarMassa.add(AzkarModel.fromJson(zeker));
    }
    return azkarMassa;
  }

  @override
  Future<AzkarModel> getAzkarSabah(String path) {
    // TODO: implement getAzkarSabah
    throw UnimplementedError();
  }

  @override
  Future<AzkarModel> getPostPrayer(String path) {
    // TODO: implement getPostPrayer
    throw UnimplementedError();
  }
}
