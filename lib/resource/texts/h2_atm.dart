import 'package:flutter/material.dart';
import 'package:resource/shared/shared.dart';

class H2Atm extends StatelessWidget {
  final String? text;
  final int? maxLine;
  final TextOverflow? overflow;
  final TextStyle? style;
  final TextAlign? align;

  const H2Atm(
    this.text, {
    Key? key,
    this.maxLine,
    this.overflow,
    this.style,
    this.align,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      Utils.removeAllHtmlTags(text!),
      maxLines: maxLine,
      overflow: overflow,
      textAlign: align,
      style: style?.copyWith(fontSize: Dimens.dp16) ??
          const TextStyle(
            fontSize: Dimens.dp16,
            color: Colors.black
          ),
    );
  }
}
