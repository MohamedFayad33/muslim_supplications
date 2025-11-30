import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/values_manager.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/azkar_widget.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/hadith_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.only(
        top: 60,
        left: AppPadding.p12,
        right: AppPadding.p12,
      ),

      child: SingleChildScrollView(
        child: Column(
          children: [
            const Hadith(),
            SizedBox(height: height * 0.7, child: const Azkar()),
          ],
        ),
      ),
    );
  }
}
