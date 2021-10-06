import 'package:flutter/material.dart';

import 'h3_atm.dart';

class ListText extends StatelessWidget {
  final String? leadingText;
  final String? text;
  final TextStyle? style;
  const ListText({Key? key, this.leadingText, this.text,this.style}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        H3Atm(
          leadingText,
          style: style,
        ),
        SizedBox(
          width: 250,
          child: H3Atm(
            text,
            maxLine: 3,
            overflow: TextOverflow.clip,
            style: style,
          ),
        )
      ],
    );
  }
}
