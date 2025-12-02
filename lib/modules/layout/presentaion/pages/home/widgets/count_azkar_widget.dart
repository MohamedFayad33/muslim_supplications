import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';

class CountAzkarWidget extends StatefulWidget {
  const CountAzkarWidget({super.key, required this.countNum});
  final int countNum;

  @override
  State<CountAzkarWidget> createState() => _CountAzkarWidgetState();
}

class _CountAzkarWidgetState extends State<CountAzkarWidget> {
  int start = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: ColorManager.inactive,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: () {
            widget.countNum > start ? start++ : null;
            setState(() {});
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorManager.backgroundBar,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                '$start/${widget.countNum}',
                style: StylesManager.counterNum(
                  context,
                ).copyWith(color: ColorManager.secText),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Container(
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: ColorManager.inactive,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ],
    );
  }
}
