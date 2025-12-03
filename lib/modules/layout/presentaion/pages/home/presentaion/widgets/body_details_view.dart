import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/azkar_card.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/count_azkar_widget.dart';

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;

    return SizedBox(
      height: height * 0.60,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          AzkarCard(
            title: '',
            // 'قال الرّسول -صلّى الله عليه وسلّم-: (لَا يُؤْمِنُ أحَدُكُمْ، حتَّى يُحِبَّ لأخِيهِ ما يُحِبُّ لِنَفْسِهِ),',
          ),

          Positioned(bottom: -45, child: CountAzkarWidget(countNum: 3)),
        ],
      ),
    );
  }
}
