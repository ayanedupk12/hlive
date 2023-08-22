import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';
import 'package:hllive/views/screens/SignUpScreen/widgets/CustomTextField.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/styles.dart';
import '../../widgets/button_widget.dart';
import '../LoginScreen/widgets/CustomButton.dart';
import '../LoginScreen/widgets/CustomTextField.dart';
import '../dashboard/widget/ProfileDialogue.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VipHeader(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: context.width * 0.8,
              height: context.height*0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryColor),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: context.height*0.05,),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 20, color: whiteColor,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: context.height*0.02,),
                  Container(
                    width: context.width * 0.7,
                    height: context.height*0.65,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryColor
                    ),
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: context.height*0.01,),
                            Padding(
                              padding:  EdgeInsets.only(left: context.width*0.11),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                "CLICK THE BUTTONS TO SELECT YOUR PRIVACY POLICY REQUIREMENTS",
                                style: TextStyle(fontSize: 13, color: whiteColor,fontWeight: FontWeight.bold),
                          ),
                              ),
                            ),
                            SizedBox(height: context.height*0.05,),
                            Padding(
                              padding:  EdgeInsets.only(left: context.width*0.11),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomButton(text: 'KYC Policy', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                  SizedBox(width: 20,),
                                  CustomButton(text: 'Responsible Gaming', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.only(left: context.width*0.11),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomButton(text: 'Terms and conditions', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                  SizedBox(width: 20,),
                                  CustomButton(text: 'Equitable', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding:  EdgeInsets.only(left: context.width*0.11),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomButton(text: 'FAQ', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                  SizedBox(width: 20,),
                                  CustomButton(text: 'HL LIVE legal Notice', onPressed: (){},height: context.height*0.04,width: context.width*0.2,fontSize: context.width*0.01,),
                                ],
                              ),
                            ),
                            SizedBox(height: context.height*0.05,),
                            Padding(
                              padding:  EdgeInsets.only(left: context.width*0.11),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Some text from our company policy",
                                  style: TextStyle(fontSize: 13, color: whiteColor,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ),

          ],
        ),
      ),
    );
  }
}

class CashBackContainer extends StatelessWidget {
  final Color? containerColor;
  final String? title;
  final String? numberPercent;
  final double? width;
  final double? height;
  final double? leftRoundness;
  final double? rightRoundness;
  const CashBackContainer({
    this.containerColor,
    this.title,
    this.numberPercent,
    this.width=300,
    this.height=100,
    this.rightRoundness=0,
    this.leftRoundness=0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: containerColor ?? Color(0xff2283F6),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(leftRoundness!),topLeft:  Radius.circular(leftRoundness!),bottomRight:  Radius.circular(rightRoundness!),topRight:  Radius.circular(rightRoundness!),)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  title ?? 'ORIGINAL',
                  style:
                      TextStyles.h1?.copyWith(fontSize: 16, color: whiteColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  numberPercent ?? '0.40%',
                  style:
                      TextStyles.h1?.copyWith(fontSize: 18, color: whiteColor),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'PERCENTAGE',
                  style:
                      TextStyles.h1?.copyWith(fontSize: 12, color: whiteColor),
                ),
              ],
            ),
            Container(
              height: height! * 0.2,
              width: width! * 0.16,
              child: Image.asset(
                AppAssets.icCashBack,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RewardContainer extends StatelessWidget {
  final String? image;
  final String? buttonText;
  final String? title;
  final Color? containerColor;
  final Color? buttonColor;
  const RewardContainer({
    this.image,
    this.buttonText,
    this.title,
    this.containerColor,
    this.buttonColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height * 0.18,
          width: Get.width * 0.13,
          decoration: BoxDecoration(
              color: containerColor ?? Colors.yellow.withOpacity(0.6),
              borderRadius: BorderRadius.circular(6)), // Green background color
        ),
        // Header (above the image)
        Positioned(
          top: 10, // Adjust the top position as needed
          left: 0, // Adjust the left position as needed
          right: 10, // Adjust the right position as needed
          child: Text(
            title ?? 'DAILY \n GIFT',
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: whiteColor),
          ),
        ),
        // Image in the middle
        Positioned(
          top: 15,
          // bottom: 30, // Adjust the bottom position as needed
          left: 40, // Adjust the left position as needed
          //right: 20, // Adjust the right position as needed
          child: Center(
            child: Image.asset(
              image ?? AppAssets.imgDollar,
              height: Get.height * 0.1, // Adjust the image height as needed
            ),
          ),
        ),
        // Button (container) at the bottom
        Positioned(
          bottom: 5,
          left: 10,
          right: 10, // Adjust the bottom position as needed

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              height: Get.height * 0.04,
              width: Get.width, // Adjust the button/container height as needed

              decoration: BoxDecoration(
                  color: buttonColor ?? Colors.yellow,
                  borderRadius:
                      BorderRadius.circular(4)), // Button background color
              child: Center(
                child: Text(
                  buttonText ?? 'To Receive',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DepositBetWidget extends StatelessWidget {
  const DepositBetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: context.height * 0.22,
          width: context.width * 0.6,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: primaryColor),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        AppAssets.
                        imgCrown,
                        height: Get.height * 0.1,
                        width: Get.width * 0.08,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "VIP 0",
                        style: TextStyle(fontSize: 16, color: whiteColor),
                      )
                    ],
                  ),
                ),
                SizedBox(width: Get.width * 0.1),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Text(
                            'Deposite',
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            width: Get.width * 0.12,
                          ),
                          Text(
                            'R0/R20',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  8), // Use responsive_sizer for borderRadius
                              child: SizedBox(
                                width: Get.width * 0.2,
                                child: const LinearProgressIndicator(
                                  minHeight:
                                      12, // Use responsive_sizer for minHeight

                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      secondaryColor),
                                  value: 1.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '0%',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'Bet   ',
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            width: Get.width * 0.12,
                          ),
                          Text(
                            'R0/R20',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  8), // Use responsive_sizer for borderRadius
                              child: SizedBox(
                                width: Get.width * 0.2,
                                child: LinearProgressIndicator(
                                  minHeight:
                                      12, // Use responsive_sizer for minHeight

                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xff2283F6)),
                                  value: 1.0,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '100%',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
              height: 40,
              width: 40,
              color: Colors.blue,
              child: Center(
                  child: Text(
                'MY \n VIP',
                style: TextStyles.smallBlackText
                    ?.copyWith(fontSize: 12, color: whiteColor),
              ))),
        )
      ],
    );
  }
}

class VipHeader extends StatelessWidget {
  const VipHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.12,
      width: context.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: secondaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                '100% BONUS',
                style:
                    TextStyle(color: buttonColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            height: Get.height * 0.06,
            width: Get.width * 0.15,
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$10",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    height: Get.height * 0.06,
                    width: Get.width * 0.08,
                    decoration: BoxDecoration(
                      color: redColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 45,
                          child: Image.asset(
                            AppAssets.imgDeposit,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const Text(
                          "Deposit",
                          style: TextStyle(
                              color: whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),

          InkWell(
              onTap: (){
                Get.dialog(ProfileDialogue());
              },
              child: const Profile())

        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.06,
      width: Get.width * 0.1,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            // Image.asset(AppAssets.imgProfile , height: 20,width: 20,),
            //use icon insted of profile picture
            Icon(
              Icons.person,
              color: whiteColor,
            ),

            SizedBox(
              width: 5,
            ),
            Text(
              'VIP 0',
              style: TextStyle(
                color: Color(0xffF4973F),
                fontSize: 12,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: whiteColor,
                ))
          ],
        ),
      ),
    );
  }
}
