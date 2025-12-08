part of 'messa_azkar_bloc.dart';

abstract class MessaAzkarEvent extends Equatable {
  const MessaAzkarEvent();

  @override
  List<Object> get props => [];
}

class GetMessaAzkarEvent extends MessaAzkarEvent {
  final String path;
  final BuildContext context;

  const GetMessaAzkarEvent({required this.path, required this.context});
  @override
  List<Object> get props => [path, context];
}
