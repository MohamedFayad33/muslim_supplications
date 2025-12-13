import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/pages/home/presentaion/home_view.dart';
import 'package:muslim_supplications/modules/layout/pages/note_view.dart';
import 'package:muslim_supplications/modules/layout/pages/reminder_view.dart';
import 'package:muslim_supplications/modules/layout/pages/tasbih_view.dart';
import 'package:muslim_supplications/modules/layout/presentaion/widgets/custom_buttom_navigation.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int index = 3;
  List<Widget> pages = const [
    NoteView(),
    ReminderView(),
    TasbihView(),
    HomeView(),
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
