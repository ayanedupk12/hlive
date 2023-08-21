import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/styles.dart';

class PlayGameWidget extends StatelessWidget {
  final double? height;
  final double? width;

  const PlayGameWidget({
    super.key,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? Get.height * 0.2,
      width: width ?? Get.width * 0.08,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: Get.height * 0.15,
            width: Get.width,
            color: secondaryColor,
            child: Image.asset(
              AppAssets.imgGift2,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: Get.height * 0.05,
            color: redColor,
            child: Center(
              child: Text(
                'Play',
                style: TextStyles.buttonText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
