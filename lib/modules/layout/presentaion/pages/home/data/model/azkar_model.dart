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

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    return AzkarModel(
      zekr: json['zekr'] as String,
      repeat: json['repeat'] as int,
      bless: json['bless'] as String,
    );
  }
  @override
  List<Object?> get props => [zekr, repeat, bless];
}
