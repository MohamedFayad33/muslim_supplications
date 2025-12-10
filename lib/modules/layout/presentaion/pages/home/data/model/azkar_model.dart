class AzkarModel {
  final String zekr;
  int count;
  final int repeat;
  final String bless;

  AzkarModel({
    required this.zekr,
    required this.count,
    required this.repeat,
    required this.bless,
  });

  factory AzkarModel.fromJson(Map<String, dynamic> json) {
    return AzkarModel(
      zekr: json['zekr'] as String,
      count: json['count'] as int,
      repeat: json['repeat'] as int,
      bless: json['bless'] as String,
    );
  }
}
