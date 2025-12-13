part of 'messa_azkar_bloc.dart';

abstract class AzkarEvent extends Equatable {
  const AzkarEvent();

  @override
  List<Object> get props => [];
}

class GetAzkarEvent extends AzkarEvent {
  final String path;
  final BuildContext context;

  const GetAzkarEvent({required this.path, required this.context});
  @override
  List<Object> get props => [path, context];
}
