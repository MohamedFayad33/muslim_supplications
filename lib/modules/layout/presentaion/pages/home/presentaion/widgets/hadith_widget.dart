import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/data/models/azkar_card_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/azkar_card.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});
  final AzkarCardModel hadith = const AzkarCardModel(
    title:
        'قال الرّسول -صلّى الله عليه وسلّم-: (لَا يُؤْمِنُ أحَدُكُمْ، حتَّى يُحِبَّ لأخِيهِ ما يُحِبُّ لِنَفْسِهِ),',
    path: '',

    icon: null,
  );
  @override
  Widget build(BuildContext context) {
    return AzkarCard(title: hadith.title);
  }
}
