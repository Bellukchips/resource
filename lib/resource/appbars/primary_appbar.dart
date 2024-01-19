// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:resource/resource/texts/h1_atm.dart';
import 'package:resource/shared/shared.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String? title;
  final Widget? leading;
  final bool? withLeading;
  final bool? withBackLeading;
  
   PrimaryAppBar({Key? key,  @required this.title,
      this.leading,
      this.withLeading = false,
      this.withBackLeading = false}) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primaryColor,
      width: MediaQuery.of(context).size.width,
      child: SafeArea(
        child: Container(
            padding: const EdgeInsets.only(left: 20, right: 32, top: 10,bottom: 20),
            child: withBackLeading!
                ? _withBackLeading(context)
                : leading != null
                    ? _withLeading()
                    : _withoutLeading()),
      ),
    );
  }

  Widget _withBackLeading(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 30,
          width: 30,
          child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              padding: EdgeInsets.zero,
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        Expanded(
          flex: 20,
          child: H1Atm(
            title!,
            style: primaryTextStyle.copyWith(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            align: TextAlign.center,
          ),
        ),
      ],
    );
  }

  /// with leading
  Widget _withLeading() {
    return Row(
      children: [
        Expanded(child: leading!),
        Expanded(
          flex: 20,
          child: H1Atm(
            title!,
            style: primaryTextStyle.copyWith(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            align: TextAlign.center,
          ),
        ),
      ],
    );
  }

  //without leading
  Widget _withoutLeading() {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: H1Atm(
        title!,
        style: primaryTextStyle.copyWith(
            fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        align: TextAlign.center,
      ),
    );
  }

@override
    final Size preferredSize;
}