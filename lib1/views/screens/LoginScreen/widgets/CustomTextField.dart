import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double width;
  final double height;

  const CustomTextField({super.key, 
    required this.labelText,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.width = double.infinity, // Default width to match parent
    this.height = 60, // Default width to match parent
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          focusedBorder:OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0), // Adjust vertical padding
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
