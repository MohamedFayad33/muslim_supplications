import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/appbar_details_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/azkar_card.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppPadding.pTopView,
          left: AppPadding.p12,
          right: AppPadding.p12,
        ),
        child: Column(
          children: [
            AppbarDetailsView(),
            Container(height: 700, child: AzkarCard(title: 'title')),
          ],
        ),
      ),
    );
  }
}

class BodyDetailsView extends StatelessWidget {
  const BodyDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: AzkarCard(title: 'title'));
  }
}
