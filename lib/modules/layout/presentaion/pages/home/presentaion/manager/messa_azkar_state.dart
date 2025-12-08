part of 'messa_azkar_bloc.dart';

abstract class MessaAzkarState extends Equatable {
  const MessaAzkarState();

  @override
  List<Object> get props => [];
}

class MessaAzkarInitial extends MessaAzkarState {}

class MessaAzkarLoading extends MessaAzkarState {}

class MessaAzkarSuccess extends MessaAzkarState {
  final List<AzkarModel> myAzkar;

  const MessaAzkarSuccess({required this.myAzkar});
  @override
  List<Object> get props => [myAzkar];
}

class MessaAzkarFailuer extends MessaAzkarState {}
