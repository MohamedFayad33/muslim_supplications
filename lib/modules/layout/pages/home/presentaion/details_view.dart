import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/manager/messa_azkar_bloc.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/widgets/appbar_details_view.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/widgets/body_details_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String? ?? 'n';

    return BlocBuilder<AzkarBloc, AzkarState>(
      builder: (context, state) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: AppPadding.pTopView,
            left: AppPadding.p12,
            right: AppPadding.p12,
          ),
          child: Column(
            children: [
              AppbarDetailsView(title: title),
              SizedBox(height: 30),
              state is AzkarSuccess
                  ? BodyDetailsView(azkar: state.myAzkar)
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
