import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'dropdown.dart';

class InputDropDownDate extends StatefulWidget {
  final String? labelText;
  final TextStyle? valueStyle;
  final Color? colorIcon;

  const InputDropDownDate({Key? key, required this.labelText,required this.valueStyle, this.colorIcon}) : super(key: key);

  @override
  _InputDropDownDateState createState() => _InputDropDownDateState();
}

class _InputDropDownDateState extends State<InputDropDownDate> {
  DateTime? selectedDate = DateTime.now();
  ValueChanged<DateTime?>? selectDate;

  ///
  ///
  /// function to select date
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate!,
      firstDate: DateTime(2015),
      initialDatePickerMode: DatePickerMode.day,
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return InputDropdown(
      colorIcon: widget.colorIcon,
      labelText: widget.labelText,
      valueText: DateFormat.yMMMd().format(selectedDate!),
      valueStyle: widget.valueStyle,
      onPressed: () {
        _selectDate(context);
      },
    );
  }
}
