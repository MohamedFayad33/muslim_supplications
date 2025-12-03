import 'package:equatable/equatable.dart';

class AzkarModel extends Equatable {
  final String zekr;
  final int repeat;
  final String bless;

  const AzkarModel({
    required this.zekr,
    required this.repeat,
    required this.bless,
  });

  @override
  List<Object?> get props => [zekr, repeat, bless];
}
