import 'package:flutter/material.dart';
import 'package:muslim_supplications/core/resources/color_manager.dart';
import 'package:muslim_supplications/core/resources/styles_manager.dart';

class CountAzkarWidget extends StatelessWidget {
  const CountAzkarWidget({
    super.key,
    required this.countNum,
    required this.previous,
    required this.next,
    required this.counter,
    required this.num,
  });
  final int countNum;
  final int num;
  final void Function() previous;
  final void Function() next;
  final void Function() counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: ShapeDecoration(
            shape: OvalBorder(),
            color: ColorManager.inactive,
          ),
          child: IconButton(
            onPressed: previous,
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        const SizedBox(width: 30),
        GestureDetector(
          onTap: counter,
          child: Container(
            constraints: BoxConstraints(maxHeight: 100, maxWidth: 100),
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: ColorManager.buttonActive,
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$num/$countNum',
                softWrap: true,
                textAlign: TextAlign.center,
                style: StylesManager.counterNum(
                  context,
                ).copyWith(color: ColorManager.pattern),
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
            onPressed: next,
            icon: Icon(Icons.arrow_forward_ios_rounded),
          ),
        ),
      ],
    );
  }
}
