import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/core/resources/constants_manager.dart';
import 'package:muslim_supplications/core/routes_manger/routes.dart';
import 'package:muslim_supplications/modules/layout/data/models/azkar_card_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/manager/messa_azkar_bloc.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/azkar_card.dart';

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
            BlocProvider.of<AzkarBloc>(
              context,
            ).add(GetAzkarEvent(path: azkar.path, context: context));
            Navigator.of(context).pushNamed(Routes.detailsView);
          },
          child: AzkarCard(icon: azkar.icon, title: azkar.title),
        );
      }).toList(),
    );
  }
}
