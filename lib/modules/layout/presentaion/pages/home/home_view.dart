import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/widgets/head_home_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(children: [HeadHomeView()])),
    );
  }
}
