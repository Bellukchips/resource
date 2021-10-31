import 'package:flutter/material.dart';

class MultilineInputText extends StatelessWidget {
  const MultilineInputText(
      {Key? key,
      this.autofocus = false,
      this.fillColor,
      this.focusedBorder,
      this.borderColor,
      this.maxLength,
      this.maxLines,
      this.hintText,
      this.controller,
      this.errorMessage,
      this.onSaved,
      this.cursorColor = Colors.grey,
      this.keyboardType = TextInputType.multiline})
      : super(key: key);
  final bool? autofocus;
  final Color? fillColor;
  final InputBorder? focusedBorder;
  final Color? borderColor;
  final int? maxLength;
  final int? maxLines;
  final String? hintText;
  final TextEditingController? controller;
  final String? errorMessage;
  final Function(String?)? onSaved;
  final Color? cursorColor;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        key: key,
        onSaved: onSaved,
        validator: (e) {
          if (e!.isEmpty) {
            return errorMessage;
          }
        },
        autofocus: autofocus!,
        keyboardType: keyboardType,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          focusedBorder: focusedBorder,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
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
        maxLines: maxLines);
  }
}
