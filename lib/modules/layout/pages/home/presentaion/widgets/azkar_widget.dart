import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/core/resources/constants_manager.dart';
import 'package:muslim_supplications/core/routes_manger/routes.dart';
import 'package:muslim_supplications/modules/layout/data/models/azkar_card_model.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/manager/messa_azkar_bloc.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/widgets/custom_zakr_widget.dart';

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

      children: azkar.map((item) {
        return InkWell(
          onTap: () async {
            await onTop(context, item);
          },
          child: CustomZakrWidget(icon: item.icon, title: item.title),
        );
      }).toList(),
    );
  }

  Future<void> onTop(BuildContext context, AzkarCardModel item) async {
    BlocProvider.of<AzkarBloc>(
      context,
    ).add(GetAzkarEvent(path: item.path, context: context));

    await Navigator.of(
      context,
    ).pushNamed(Routes.detailsView, arguments: item.title);
  }
}
