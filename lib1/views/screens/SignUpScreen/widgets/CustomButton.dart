import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isFilled;
  final Color color;
  final double width;
  final double height;
  final double fontSize;
  final Color backgroundColor;
  final Widget prefix;
  final double borderRadius;// New property for controlling border radius

  CustomButton({
    required this.text,
    required this.onPressed,
    this.isFilled = true,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 8.0, // Default border radius
    this.fontSize = 12.0, // Default border radius
    this.color = Colors.white, // Default border radius
    this.prefix = const SizedBox(), // Default border radius
    this.backgroundColor = Colors.blue, // Default border radius
  });

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    );

    return isFilled
        ? SizedBox(
      width: width,
          height: height,
          child: ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefix,SizedBox(width: 10,),
          Text(text,style: TextStyle(color: color,fontSize: fontSize,fontWeight: FontWeight.bold),),
        ],
      ),
      style: ElevatedButton.styleFrom(
          shape: shape,
            primary: backgroundColor

      ),
    ),
        )
        : SizedBox(
      width: width,
      height: height,
          child: OutlinedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefix,SizedBox(width: 10,),
          Text(text,style: TextStyle(color: color,fontSize: fontSize),),
        ],
      ),
      style: OutlinedButton.styleFrom(
          shape: shape,
          primary: color
      ),
    ),
        );
  }
}

