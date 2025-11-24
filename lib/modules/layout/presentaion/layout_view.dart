import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/home_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/note_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/reminder_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/tasbih_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/widgets/custom_buttom_navigation.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int index = 0;
  List<Widget> pages = const [
    HomeView(),
    TasbihView(),
    ReminderView(),
    NoteView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: CustomButtomNavigationBar(
        index: index,
        onTap: (value) => setState(() {
          index = value;
        }),
      ),
    );
  }
}
