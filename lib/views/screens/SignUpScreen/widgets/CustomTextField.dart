import 'package:flutter/material.dart';

class CustomTextField1 extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double width;
  final double height;
  final bool enabled;
  final Color fillColor;

  CustomTextField1({
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.prefixIcon,
    this.enabled=true,
    this.suffixIcon,
    this.fillColor=Colors.transparent,
    this.width = double.infinity, // Default width to match parent
    this.height = 60, // Default width to match parent
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextField(
        style:TextStyle(color: Colors.white),
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: fillColor,
          hoverColor: Colors.white.withOpacity(0.5),
          focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: enabled?BorderSide(color: Colors.white.withOpacity(0.5)):BorderSide(color: Colors.white.withOpacity(0.0))
          ),

          contentPadding: EdgeInsets.symmetric(vertical: 10.0), // Adjust vertical padding
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
