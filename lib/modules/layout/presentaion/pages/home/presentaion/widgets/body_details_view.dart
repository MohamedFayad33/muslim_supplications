import 'package:flutter/material.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/data/model/azkar_model.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/azkar_card.dart';
import 'package:muslim_supplications/modules/layout/presentaion/pages/home/presentaion/widgets/count_azkar_widget.dart';

class BodyDetailsView extends StatefulWidget {
  const BodyDetailsView({super.key, required this.azkar});
  final List<AzkarModel> azkar;

  @override
  State<BodyDetailsView> createState() => _BodyDetailsViewState();
}

class _BodyDetailsViewState extends State<BodyDetailsView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    int num = widget.azkar[index].count;
    double height = MediaQuery.sizeOf(context).height;

    return SizedBox(
      height: height * 0.75,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: AzkarCard(title: widget.azkar[index].zekr)),
          CountAzkarWidget(
            counter: counter,
            previous: () {
              setState(() {
                index == 0 ? null : index--;
              });
            },
            next: () {
              setState(() {
                widget.azkar.length - 1 <= index ? null : index++;
              });
            },
            countNum: widget.azkar[index].repeat,
            num: num,
          ),
        ],
      ),
    );
  }

  void counter() {
    setState(() {
      int x = widget.azkar[index].repeat - 1;
      int y = widget.azkar.length - 1;
      if (x >= widget.azkar[index].count) {
        widget.azkar[index].count++;
      } else if (x < widget.azkar[index].count && y > index) {
        index++;
      }
    });
  }
}
