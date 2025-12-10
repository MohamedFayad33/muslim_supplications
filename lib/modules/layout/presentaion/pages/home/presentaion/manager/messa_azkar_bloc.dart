import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/model/azkar_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/repo/home_repo.dart';

part 'messa_azkar_event.dart';
part 'messa_azkar_state.dart';

class AzkarBloc extends Bloc<AzkarEvent, AzkarState> {
  final HomeRepo _homeRepo;
  AzkarBloc(this._homeRepo) : super(AzkarInitial()) {
    on<GetAzkarEvent>(getAzkarMessa);
  }

  FutureOr getAzkarMessa(GetAzkarEvent event, Emitter emit) async {
    emit(AzkarLoading());
    try {
      List<AzkarModel> myAzkar = await _homeRepo.getAzkarMassa(
        event.path,
        event.context,
      );

      emit(AzkarSuccess(myAzkar: myAzkar));
    } catch (e) {
      emit(AzkarFailuer());
    }
  }
}
