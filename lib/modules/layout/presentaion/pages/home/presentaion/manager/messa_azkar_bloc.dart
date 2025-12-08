import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/model/azkar_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/repo/home_repo.dart';

part 'messa_azkar_event.dart';
part 'messa_azkar_state.dart';

class MessaAzkarBloc extends Bloc<MessaAzkarEvent, MessaAzkarState> {
  final HomeRepo _homeRepo;
  MessaAzkarBloc(this._homeRepo) : super(MessaAzkarInitial()) {
    on<GetMessaAzkarEvent>(getAzkarMessa);
  }

  FutureOr getAzkarMessa(GetMessaAzkarEvent event, Emitter emit) async {
    emit(MessaAzkarLoading());
    try {
      List<AzkarModel> myAzkar = await _homeRepo.getAzkarMassa(
        event.path,
        event.context,
      );

      emit(MessaAzkarSuccess(myAzkar: myAzkar));
    } catch (e) {
      emit(MessaAzkarFailuer());
    }
  }
}
