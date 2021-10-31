import 'package:flutter/material.dart';

import '../resource.dart';

class CustomElevationButton extends StatelessWidget {
  const CustomElevationButton(
      {Key? key,
      required this.height,
      this.color,
      this.style,
      this.text,
      this.onTap,
      this.width,
      this.withIcon = false})
      : super(key: key);
  final double? height;
  final Color? color;
  final TextStyle? style;
  final String? text;
  final VoidCallback? onTap;
  final double? width;
  final bool? withIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(height! / 2)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: color!.withOpacity(0.2),
              blurRadius: height! / 5,
              offset: Offset(0, height! / 5),
            ),
          ],
        ),
        child: TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                color,
              ),
              shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))))),
          onPressed: onTap,
          child: withIcon!
              ? _withIconButton()
              : H3Atm(
                  text,
                  style: style,
                ),
        ));
  }

  //
  //button dengan Icon
  Widget _withIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        H3Atm(
          text,
          style: style,
        ),
        const SizedBox(
          width: 5,
        ),
        const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )
      ],
    );
  }
}
