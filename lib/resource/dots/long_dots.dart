import 'package:flutter/material.dart';

class LongDots extends StatelessWidget {
  final int? index;
  final Color? currentColor;
  final Color? secondColor;
  final int? currentPage;
  final double widthOnChange;
  final Duration animatedDuration;

  const LongDots(
      {Key? key,
      required this.animatedDuration,
      this.index,
      this.currentColor,
      this.secondColor,
      this.currentPage,
      required this.widthOnChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animatedDuration,
      margin: const EdgeInsets.only(right: 23),
      height: 10,
      width: currentPage == index ? widthOnChange : 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentPage == index ? currentColor : secondColor),
    );
  }
}
