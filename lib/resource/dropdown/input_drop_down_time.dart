import 'package:flutter/material.dart';

import 'dropdown.dart';

class InputDropDownTimer extends StatefulWidget {
  const InputDropDownTimer({Key? key, required this.valueStyle, this.labelText, this.colorIcon}) : super(key: key);
  final TextStyle? valueStyle;
  final String? labelText;
  final Color? colorIcon;

  @override
  _InputDropDownTimerState createState() => _InputDropDownTimerState();
}

class _InputDropDownTimerState extends State<InputDropDownTimer> {
  ValueChanged<TimeOfDay?>? selectTime;
  TimeOfDay? selectedTime = const TimeOfDay(hour: 00, minute: 00);

  //
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime!,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InputDropdown(
      colorIcon: widget.colorIcon,
      labelText: widget.labelText,
      valueText: selectedTime!.format(context),
      valueStyle: widget.valueStyle,
      onPressed: () {
        _selectTime(context);
      },
    );
  }
}
