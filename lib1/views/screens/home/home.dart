import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: context.height * 0.12,
            width: context.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: primaryColor),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    Text(
                      'Sign Up and get',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '10% discount',
                      style: TextStyle(
                          color: buttonColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                const ElevatedButtonWidget(
                  width: 120,
                  buttonText: '  Sign In  ',
                  borderColor: Colors.red,
                  buttonColor: Colors.red,
                ),
                const ElevatedButtonWidget(
                  width: 120,
                  buttonText: '  Sign Up  ',
                  borderColor: Colors.blue,
                  buttonColor: Colors.blue,
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: context.height * 0.8,
            width: context.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: primaryColor),
            child: const SizedBox(
              child: Text('1'),
            ),
          ),
        ],
      ),
    );
  }
}
