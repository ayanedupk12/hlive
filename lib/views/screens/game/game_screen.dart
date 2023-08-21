import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/screens/game/widget/play_game_container.dart';
import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/assests_constant.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/styles.dart';
import '../vip/vip_screen.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GameHeader(),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: context.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    children: [

                      SizedBox(height: Get.height * 0.04,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GameContainerW(

                            ),
                            GameContainerW(
                              title: 'PRINCIPAL',
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GameContainerW(
                              title: 'WARM',
                            ),
                            GameContainerW(
                              title: 'PROVIDERS',
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GameContainerW(
                              title: 'SLOTS',
                            ),
                            GameContainerW(
                              title: 'LIVE CASINO',
                            ),


                          ],
                        ),
                      ),
                      SizedBox(height: Get.height * 0.04,),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GameContainerW extends StatelessWidget {
  final String? title;

  const GameContainerW({
    this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.3,
      width: Get.width * 0.35,

      decoration: BoxDecoration(
        color: primaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.smart_toy_outlined, color: whiteColor,),
                SizedBox(width: 10,),
                 Text(
                 title ?? 'INTERNATIONAL',
                  style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                SizedBox(width: 10,),
                Container(
                  height: Get.height * 0.04,
                  width: Get.width * 0.08,
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child:Center(
                    child: Text(
                      'Total 12',
                      style: TextStyle(
                          color: whiteColor,

                          fontSize: 10),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                PlayGameWidget(),
                SizedBox(
                  width: 5,
                ),
                PlayGameWidget(),
                SizedBox(
                  width: 5,
                ),
                PlayGameWidget(),
                SizedBox(
                  width: 5,
                ),
             Container(
        height: Get.height * 0.2,
        width :Get.width * 0.08,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(child: Text(
          'SEE \n ALL' , style: TextStyles.h1?.copyWith(
          color: containerColor,
          fontSize: 16,
        ),
        ),),
      )

              ],
            )
          ],
        ),
      )

    );
  }
}


class GameHeader extends StatelessWidget {
  const GameHeader({
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
              SizedBox(width: 20,),

              Text(
                '100% BONUS',
                style: TextStyle(
                    color: buttonColor, fontWeight: FontWeight.bold),
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
                color: primaryColor,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("R\$10" , style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),),
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
                          child:  Image.network(
                            imgWallet,
                            fit: BoxFit.contain,
                          ) ,
                        ),

                        const Text("Deposit" , style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),),

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
          const Profile()

        ],
      ),
    );
  }
}
