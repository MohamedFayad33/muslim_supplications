import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/manager/messa_azkar_bloc.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/appbar_details_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/body_details_view.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessaAzkarBloc, MessaAzkarState>(
      builder: (context, state) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            top: AppPadding.pTopView,
            left: AppPadding.p12,
            right: AppPadding.p12,
          ),
          child: Column(
            children: [
              AppbarDetailsView(),
              SizedBox(height: 30),
              state is MessaAzkarSuccess
                  ? BodyDetailsView(azkar: state.myAzkar)
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
