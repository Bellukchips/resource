import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'dropdown.dart';

class InputDropDownDate extends StatefulWidget {
  final String? labelText;
  final TextStyle? valueStyle;
  final Color? colorIcon;
  final VoidCallback onPressed;
  final DateTime? selectedDate;
  const InputDropDownDate(
      {Key? key,
      required this.labelText,
      required this.valueStyle,
      this.colorIcon,
      required this.onPressed,
      this.selectedDate})
      : super(key: key);

  @override
  _InputDropDownDateState createState() => _InputDropDownDateState();
}

class _InputDropDownDateState extends State<InputDropDownDate> {
  @override
  Widget build(BuildContext context) {
    return InputDropdown(
      colorIcon: widget.colorIcon,
      labelText: widget.labelText,
      valueText: DateFormat.yMMMd().format(widget.selectedDate!),
      valueStyle: widget.valueStyle,
      onPressed: () {
        widget.onPressed();
      },
    );
  }
}
