import 'package:flutter/material.dart';
import 'package:resource/shared/shared.dart';
import '../resource.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final bool? withIcon;
  final Color? buttonColor;
  final VoidCallback? onTap;
  const PrimaryButton(
      {Key? key,
      @required this.text,
      @required this.buttonColor,
      this.height = 40,
      this.withIcon = false,
      this.width,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              buttonColor
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Dimens.buttonRadius,
              ),
            ))),
        child: withIcon!
            ? _withIconButton()
            : H3Atm(
                text,
                style: primaryTextStyle.copyWith(
                    color: Colors.white, fontWeight: FontWeight.w600),
              ),
        onPressed: onTap,
      ),
    );
  }

  //button dengan Icon
  Widget _withIconButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        H3Atm(
          text,
          style: primaryTextStyle.copyWith(color: Colors.white),
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