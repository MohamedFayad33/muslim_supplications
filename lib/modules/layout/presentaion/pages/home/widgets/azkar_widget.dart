import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/constants_manager.dart';
import 'package:muslim_supplications/modules/layout/data/models/azkar_card_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/details_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/azkar_card.dart';

class Azkar extends StatelessWidget {
  const Azkar({super.key});
  final List<AzkarCardModel> azkar = AppConstants.azkarCardData;
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2,
      ),

      children: azkar.map((azkar) {
        return InkWell(
          onTap: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => DetailsView()));
          },
          child: AzkarCard(icon: azkar.icon, title: azkar.title),
        );
      }).toList(),
    );
  }
}
