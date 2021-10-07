import 'package:flutter/material.dart';

class DotsDefault extends StatelessWidget {
  final int? index;
  final Color? currentColor;
  final Color? secondColor;
  final int? currentPage;

  const DotsDefault({Key? key, this.index, this.currentColor, this.secondColor, this.currentPage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(right: 23),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentPage == index ? currentColor :secondColor),
    );
  }
}