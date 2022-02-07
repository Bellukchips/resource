import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField(
      {Key? key,
      this.autofocus,
      this.fillColor,
      this.focusedBorder,
      this.borderColor,
      this.maxLength,
      this.hintText,
      this.controller,
      this.errorMessage,
      this.onSaved,
      this.keyboardType = TextInputType.text, this.cursorColor = Colors.grey, this.labelText, this.colorLabelAndHint})
      : super(key: key);
  final bool? autofocus;
  final Color? fillColor;
  final InputBorder? focusedBorder;
  final Color? borderColor;
  final int? maxLength;
  final String? hintText;
  final TextEditingController? controller;
  final String? errorMessage;
  final Function(String?)? onSaved;
  final TextInputType? keyboardType;
  final Color? cursorColor;
  final String? labelText;
  final Color? colorLabelAndHint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      autofocus: autofocus!,
      validator: (e) {
        if (e!.isEmpty) {
          return errorMessage;
        }
      },
      keyboardType: keyboardType,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          labelStyle: TextStyle(color: colorLabelAndHint),
          labelText: labelText,
          focusedBorder: focusedBorder,
          hintText: hintText,
          hintStyle:  TextStyle(color: colorLabelAndHint),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              width: 0,
              color: borderColor!,
            ),
          ),
          border: const OutlineInputBorder(),
        ),
        maxLength: maxLength,
    );
  }
}
