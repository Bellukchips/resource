import 'package:flutter/material.dart';

class TextDots extends StatelessWidget {
  const TextDots(
      {Key? key,
      required this.animatedDuration,
      required this.weightIndicator,
      required this.text,
      required this.index,
      required this.currentColor,
      required this.secondColor,
      required this.currentPage})
      : super(key: key);
  final int? index;
  final Color? currentColor;
  final Color? secondColor;
  final int? currentPage;
  final Text text;
  final double weightIndicator;
  final Duration animatedDuration;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        text,
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: weightIndicator,
          width: 40,
          child: AnimatedContainer(
            duration: animatedDuration,
            color: currentPage == index ? currentColor : secondColor
          ),
        )
      ],
    );
  }
}
