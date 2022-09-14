import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputText extends StatelessWidget {
  const CurrencyInputText(
      {Key? key,
      this.autofocus,
      this.prefixText,
      this.fillColor,
      this.focusedBorder,
      this.borderColor,
      this.maxLength,
      this.hintText,
      this.controller,
      this.errorMessage,
      this.onSaved,
      this.cursorColor = Colors.grey,
      this.labelText,
      this.colorLabelAndHint,
      required this.locale,
      required this.decimalDigits,
      required this.symbol})
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
  final Color? cursorColor;
  final String? labelText;
  final Color? colorLabelAndHint;
  final String? prefixText;
  final String locale;
  final int decimalDigits;
  final String symbol;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: [
        CurrencyPtBrInputFormatter(
            locale: locale, decimalDigits: decimalDigits, symbol: symbol)
      ],
      keyboardType: TextInputType.number,
      key: key,
      autofocus: autofocus!,
      validator: (e) {
        if (e!.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      cursorColor: cursorColor,
      decoration: InputDecoration(
        fillColor: fillColor,
        prefixText: prefixText,
        filled: true,
        labelStyle: TextStyle(color: colorLabelAndHint),
        labelText: labelText,
        focusedBorder: focusedBorder,
        hintText: hintText,
        hintStyle: TextStyle(color: colorLabelAndHint),
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

class CurrencyPtBrInputFormatter extends TextInputFormatter {
  final String locale;
  final int decimalDigits;
  final String symbol;
  CurrencyPtBrInputFormatter({
    required this.locale,
    required this.decimalDigits,
    required this.symbol,
  });
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    int value = int.parse(newValue.text);
    final formatter =
        NumberFormat.currency(locale: "id_ID", symbol: "", decimalDigits: 0);
    String newText = "" + formatter.format(value / 1);

    return newValue.copyWith(
        text: newText,
        selection: TextSelection.collapsed(offset: newText.length));
  }
}
