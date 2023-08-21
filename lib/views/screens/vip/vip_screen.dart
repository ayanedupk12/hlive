import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/styles.dart';
import '../../widgets/button_widget.dart';

class VipScreen extends StatelessWidget {
  const VipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const VipHeader(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: context.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryColor),
              child: SizedBox(
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height * 0.06,
                    ),
                    Row(
                      children: [
                        // Image.asset('assets/images/
                        const SizedBox(
                          width: 20,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow_rounded,
                              size: 50,
                            )),

                        const SizedBox(
                          width: 40,
                        ),
                        const DepositBetWidget(),

                        //Image.asset(AppAssets.imgPlayButton, height: 100, width: 50,),
                        const SizedBox(
                          width: 40,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.play_arrow_rounded,
                              size: 50,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: Get.height * 0.06,
                    ),

                    // Reward container
                    Container(
                      height: context.height * 0.28,
                      width: context.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'VIP0 Rewards available for VIP',
                              style: TextStyles.bodyText
                                  ?.copyWith(color: whiteColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RewardContainer(),
                                  RewardContainer(
                                    title: 'WEEKLY \n GIFT',
                                    buttonText: '03 10:23:00',
                                    containerColor: Color(0xffF9BB8D),
                                    buttonColor: Color(0xffBE824F),
                                  ),
                                  RewardContainer(
                                    title: 'DAILY \n GIFT',
                                    buttonText: '03 10:23:00',
                                    containerColor: Color(0xffDD234B),
                                    buttonColor: Color(0xffB41F1C),
                                  ),
                                  RewardContainer(
                                    title: 'UPGRADE \n GIFT',
                                    buttonText: '03 10:23:00',
                                    containerColor: Color(0xff9550F2),
                                    buttonColor: Color(0xff6726BF),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Get.height * 0.06,
                    ),

                    Container(
                      width: context.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'VIP0 CASHBACK',
                                  style: TextStyles.bodyText
                                      ?.copyWith(color: whiteColor),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                    height: Get.height * 0.04,
                                    decoration: BoxDecoration(
                                        color: redColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'How to get cashback bonus',
                                        style: TextStyles.bodyText
                                            ?.copyWith(color: whiteColor),
                                      ),
                                    ))),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CashBackContainer(),
                                  CashBackContainer(
                                    containerColor: Color(0xffF9BB8D),
                                    title: 'SLOT',
                                    numberPercent: '20',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //Cash back container
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CashBackContainer(
                                    containerColor: Color(0xffDD234B),
                                    title: 'SPORTS',
                                    numberPercent: '30',
                                  ),
                                  CashBackContainer(
                                    containerColor: Color(0xff9550F2),
                                    title: 'LIVECASINO',
                                    numberPercent: '50',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Bonus to be claimed',
                                    style: TextStyles.greyBodyText?.copyWith(
                                        fontSize: 10,
                                        color: const Color(0xffA9A9A9)),
                                  ),
                                  Text(
                                    ' Today bonus',
                                    style: TextStyles.greyBodyText?.copyWith(
                                        fontSize: 10,
                                        color: const Color(0xffA9A9A9)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'R\$ 0.00',
                                    style: TextStyles.h1?.copyWith(
                                        fontSize: 14, color: whiteColor),
                                  ),
                                  Text(
                                    'R\$ 0.00',
                                    style: TextStyles.h1?.copyWith(
                                        fontSize: 14, color: whiteColor),
                                  ),
                                ],
                              ),
                            ),
                            //#2283F6
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: ElevatedButtonWidget(
                                buttonText: 'CLAIM CASHBACK',
                                buttonColor: const Color(0xff2283F6),
                                width: Get.width * 0.2,
                              ),
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Get.height * 0.06,
                    ),

                    ///Benefit Container
                    Container(
                      width: context.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'VIP0 DESCRIPTION OF ALL BENEFITS',
                              style: TextStyles.bodyText
                                  ?.copyWith(color: whiteColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            const SizedBox(
                              height: 5,
                            ),

                            // ist row
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Update conditions',
                                        style: TextStyles.smallBlackText
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: const Color(0xffA9A9A9)),
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.25,
                                        decoration: const BoxDecoration(
                                          color: secondaryColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'Total deposits',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'RS 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'Total jackpots',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'RS 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Guaranteed Level Conditions',
                                        style: TextStyles.smallBlackText
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: const Color(0xffA9A9A9)),
                                      ),
                                      Container(
                                        height: Get.height * 0.1,
                                        width: Get.width * 0.25,
                                        decoration: const BoxDecoration(
                                          color: secondaryColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'Total jackpots',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'RS 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //2nd row
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'VIP CashBack Bonus',
                                        style: TextStyles.smallBlackText
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: const Color(0xffA9A9A9)),
                                      ),
                                      Container(
                                        width: Get.width * 0.25,
                                        decoration: const BoxDecoration(
                                          color: secondaryColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'JOGOS ORIGINAL',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    '0.40%',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                  Text(
                                                    'SPORTS',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    '0.40%',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'SLOT',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    '0.40%',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                  Text(
                                                    'LIVE CASINO',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    '0.40%',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'VIP Level Bonus Package',
                                        style: TextStyles.smallBlackText
                                            ?.copyWith(
                                                fontSize: 14,
                                                color: const Color(0xffA9A9A9)),
                                      ),
                                      Container(
                                        width: Get.width * 0.25,
                                        decoration: const BoxDecoration(
                                          color: secondaryColor,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    'VIP Upgrade Gift',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'R\$ 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                  Text(
                                                    'VIP weekly gift',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'R\$ 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    'VIP Monthly Gift',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 10,
                                                            color: const Color(
                                                                0xffA9A9A9)),
                                                  ),
                                                  Text(
                                                    'R\$ 0',
                                                    style: TextStyles
                                                        .greyBodyText
                                                        ?.copyWith(
                                                            fontSize: 14,
                                                            color: const Color(
                                                                0xffFFA340)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            //
                            Text(
                              'VIP Level Bonus Package',
                              style: TextStyles.smallBlackText?.copyWith(
                                  fontSize: 14, color: const Color(0xffA9A9A9)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: Get.height * 0.1,
                              decoration: const BoxDecoration(
                                color: secondaryColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Free withdrawal limit',
                                          style: TextStyles.greyBodyText
                                              ?.copyWith(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xffA9A9A9)),
                                        ),
                                        Text(
                                          'R\$ 0',
                                          style: TextStyles.greyBodyText
                                              ?.copyWith(
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xffFFA340)),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Withdrawal Fee',
                                          style: TextStyles.greyBodyText
                                              ?.copyWith(
                                                  fontSize: 10,
                                                  color:
                                                      const Color(0xffA9A9A9)),
                                        ),
                                        Text(
                                          '2.5%',
                                          style: TextStyles.greyBodyText
                                              ?.copyWith(
                                                  fontSize: 14,
                                                  color:
                                                      const Color(0xffFFA340)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.06,
                    ),

                    Container(
                      width: context.width * 0.6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: primaryColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'VIP Group',
                                    style: TextStyles.bodyText
                                        ?.copyWith(color: whiteColor),
                                  ),
                                  Text(
                                    'Join our VIP group Get\n'
                                    ' instant access to more events\n and bonuses',
                                    style: TextStyles.greyBodyText?.copyWith(
                                        fontSize: 14,
                                        color: const Color(0xffA9A9A9)),
                                  ),
                                ]),
                            Container(
                                height: Get.height * 0.08,
                                width: Get.width * 0.15,
                                decoration: BoxDecoration(
                                    color: const Color(0xff2283F6),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.send,
                                          size: 30,
                                          color: whiteColor,
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          'Join Now',
                                          style: TextStyles.bodyText
                                              ?.copyWith(color: whiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 40,
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: Get.height * 0.06,
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
  const CashBackContainer({
    this.containerColor,
    this.title,
    this.numberPercent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.18,
      width: Get.width * 0.25,
      decoration: BoxDecoration(
          color: containerColor ?? const Color(0xff2283F6),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, right: 10, left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
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
              height: Get.height * 0.1,
              width: Get.width * 0.1,
              color: const Color(0xff8abbf6),
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
            style: const TextStyle(
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
            child: Image.network(
              image ??
                  'https://media.istockphoto.com/id/1284058976/photo/trophy-on-the-yellow-color-background.jpg?s=612x612&w=0&k=20&c=B04WIMBTNRxBAdAVx06Gu134hibWGZidn2TFyytri9g=', // Replace with your image URL
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
                  style: const TextStyle(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        AppAssets.imgDeposit,
                        height: Get.height * 0.1,
                        width: Get.width * 0.08,
                        fit: BoxFit.contain,
                      ),
                      const Text(
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
                      Row(
                        children: [
                          const Text(
                            'Deposite',
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            width: Get.width * 0.12,
                          ),
                          const Text(
                            'R0/R20',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                          const SizedBox(width: 10),
                          const Text(
                            '0%',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Bet   ',
                            style: TextStyle(color: whiteColor),
                          ),
                          SizedBox(
                            width: Get.width * 0.12,
                          ),
                          const Text(
                            'R0/R20',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  8), // Use responsive_sizer for borderRadius
                              child: SizedBox(
                                width: Get.width * 0.2,
                                child: const LinearProgressIndicator(
                                  minHeight:
                                      12, // Use responsive_sizer for minHeight

                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xff2283F6)),
                                  value: 1.0,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            '100%',
                            style: TextStyle(color: whiteColor),
                          )
                        ],
                      ),
                      const SizedBox(
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
          const Row(
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
          const SizedBox(
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
                  const Text(
                    "R\$10",
                    style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Container(
                    height: Get.height * 0.06,
                    width: Get.width * 0.08,
                    decoration: const BoxDecoration(
                      color: redColor,
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: 45,
                          child: Image.network(
                            imgWallet,
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
          const SizedBox(
            width: 20,
          ),
          const Profile()
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
            const Icon(
              Icons.person,
              color: whiteColor,
            ),

            const SizedBox(
              width: 5,
            ),
            const Text(
              'VIP 0',
              style: TextStyle(
                color: Color(0xffF4973F),
                fontSize: 12,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_drop_down_sharp,
                  color: whiteColor,
                ))
          ],
        ),
      ),
    );
  }
}
