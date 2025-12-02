import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/appbar_details_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: AppPadding.pTopView,
          left: AppPadding.p12,
          right: AppPadding.p12,
        ),
        child: Column(children: [AppbarDetailsView()]),
      ),
    );
  }
}
