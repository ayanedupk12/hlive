import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hllive/views/screens/game/widget/play_game_container.dart';

import '../../../core/constant/colors.dart';
import 'game_screen.dart';

class PlayGameScreen extends StatelessWidget {
  const PlayGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const GameHeader(),
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

                      Row(
                        children: [
                          Icon(Icons.smart_toy_outlined, color: whiteColor,),
                          SizedBox(width: 10,),
                          const Text(
                            'INTERNATIONAL',
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
                      //
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),


                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),


                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),

                          PlayGameWidget(
                            height: Get.height * 0.2,
                            width: Get.width  * 0.15,
                          ),


                        ],
                      ),
                      SizedBox(height: 10,),

                      SizedBox(height: 10,),

                      // SizedBox(
                      //   height: 600,
                      //   child: GridView.builder(
                      //     physics: NeverScrollableScrollPhysics(),
                      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      //       crossAxisCount: 4, // Number of columns in the grid
                      //       crossAxisSpacing: 12.0, // Spacing between columns
                      //       mainAxisSpacing: 18.0,
                      //       childAspectRatio: 1,
                      //       mainAxisExtent: 123,// Spacing between rows
                      //     ),
                      //     itemCount: 12, // Number of items in the grid (adjust as needed)
                      //     itemBuilder: (BuildContext context, int index) {
                      //       return PlayGameWidget(
                      //         height: Get.height * 0.5,
                      //         width: Get.width * 0.15,
                      //       );
                      //     },
                      //   ),
                      // )





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
