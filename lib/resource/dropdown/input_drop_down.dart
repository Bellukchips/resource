import 'package:flutter/material.dart';

class InputDropdown extends StatefulWidget {
  const InputDropdown(
      {Key? key,
      this.labelText,
      this.valueText,
      this.valueStyle,
      this.onPressed,
      this.child, this.colorIcon})
      : super(key: key);

  final String? labelText;
  final String? valueText;
  final TextStyle? valueStyle;
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? colorIcon;

  @override
  State<InputDropdown> createState() => _InputDropdownState();
}

class _InputDropdownState extends State<InputDropdown> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: widget.labelText,
        ),
        baseStyle: widget.valueStyle,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(widget.valueText!, style: widget.valueStyle),
            Icon(Icons.arrow_drop_down,
                color: Theme.of(context).brightness == Brightness.light
                    ? widget.colorIcon
                    : Colors.white70),
          ],
        ),
      ),
    );
  }
}

