import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assests_constant.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/styles.dart';
import '../../LoginScreen/widgets/CustomButton.dart';
import '../../vip/vip_screen.dart';

class MissionsScreen extends StatelessWidget {

  MissionsScreen({Key? key}) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      // title: ,
      content: Container(
        height: context.height/1.4,
        width: context.width/1.5,
        color: Color(0xff161F2C),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 80,width: 70,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(5))
                      ),

                      child: Center(child: Text('MY \n VIP', style: TextStyles.smallBlackText?.copyWith(fontSize: 12,
                          color: whiteColor

                      ),))


                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_left_sharp,color: Colors.white,),
                      Text('VIP 0',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_right_sharp,color: Colors.white,),
                    ],
                  ),
                  IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close,color: whiteColor,))

                ]),
            SizedBox(height: 10,),
            Text('VIP LOGIN REWARD',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.width*0.1,vertical: 70),
              child: SizedBox(
                height: context.height*0.4,
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                      childAspectRatio: 6/4,
                      crossAxisSpacing: 10,
                        mainAxisSpacing:10,
                      mainAxisExtent:context.height*0.17,
                ), itemBuilder: (BuildContext context, int index) {
                      return Container(
                          // height: 80,width: 70,
                          decoration: BoxDecoration(
                              color: index==0?redColor:orangeColor,
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(5))
                          ),

                          child: Stack(
                            children: [
                              Center(child: Column(
                                children: [
                                  SizedBox(height: context.height*0.03,),
                                  Image.asset(AppAssets.gemIcon,height: context.height*0.1,width: context.height*0.1,),
                                  Text('R \$${index*4}', style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),)
                                ],
                              )),
                              Positioned(child: Container(
                                  height: 20,width: 60,
                                  decoration: BoxDecoration(
                                      color: orangeColor,
                                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(5))
                                  ),
                                  child: Center(child:
                                  Text('Day ${index+1}', style: TextStyles.smallBlackText?.copyWith(fontSize: 12, color: whiteColor),)
                                  )


                              ),)
                            ],
                          )


                      );
                },),
              ),
            )
          ],
        ),
      )
    );
  }
}
