part of 'messa_azkar_bloc.dart';

abstract class AzkarState extends Equatable {
  const AzkarState();

  @override
  List<Object> get props => [];
}

class AzkarInitial extends AzkarState {}

class AzkarLoading extends AzkarState {}

class AzkarSuccess extends AzkarState {
  final List<AzkarModel> myAzkar;

  const AzkarSuccess({required this.myAzkar});
  @override
  List<Object> get props => [myAzkar];
}

class AzkarFailuer extends AzkarState {}
