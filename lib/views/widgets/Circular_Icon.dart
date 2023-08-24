import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;

  CircularIcon({
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: iconSize + 5.0, // Adjust this value as needed
      height: iconSize + 5.0, // Adjust this value as needed
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}