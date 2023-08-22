import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constant/colors.dart';
import '../../core/constant/styles.dart';

class CustomCheckbox extends StatefulWidget {
  final String title;
  final bool initialValue;
  final double width;
  final Function(bool) onChanged;

  CustomCheckbox({
    required this.title,
    this.initialValue = false,
    required this.onChanged,
    required this.width,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          activeColor: blueColor,
          onChanged: (newValue) {
            setState(() {
              _isChecked = newValue!;
              widget.onChanged(newValue);
            });
          },
        ),
        SizedBox(
            width: widget.width,
            child: Text(widget.title, style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),)),
      ],
    );
  }
}
