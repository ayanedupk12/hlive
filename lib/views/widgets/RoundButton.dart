import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Widget child;

  const RoundIconButton({
    required this.backgroundColor,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: ShapeDecoration(
        color: backgroundColor, // Background color
        shape: CircleBorder(),
      ),
      child: InkWell(
        onTap: onPressed,
        customBorder: CircleBorder(), // Match the background circle shape
        child: Padding(
          padding: const EdgeInsets.all(12.0), // Adjust padding as needed
          child: child,
        ),
      ),
    );
  }
}