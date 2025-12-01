import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [AppbarDetailsView()]));
  }
}

class AppbarDetailsView extends StatelessWidget {
  const AppbarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.arrow_back),
        Text('اذكار الصباح'),
        Icon(Icons.arrow_back),
      ],
    );
  }
}
