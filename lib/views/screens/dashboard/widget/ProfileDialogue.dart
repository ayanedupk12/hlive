import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assests_constant.dart';
import '../../../../core/constant/colors.dart';
import '../../LoginScreen/widgets/CustomButton.dart';
import '../../vip/vip_screen.dart';

class ProfileDialogue extends StatelessWidget {

   ProfileDialogue({Key? key}) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff161F2C),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        SizedBox(width: 1,),
        Text('PROFILE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close,color: whiteColor,))

          ]),
      content: SizedBox(
        height: context.height/1.5,
        width: context.width/1.5,
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              height: context.height * 0.06,
              width: context. width * 0.5,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    // Image.asset(AppAssets.imgProfile , height: 20,width: 20,),
                    //use icon insted of profile picture
                    Icon(Icons.person, color: whiteColor,),
                    SizedBox(width: 5,),
                    Text('VIP 0' , style: TextStyle(
                      color: Color(0xffF4973F),
                      fontSize: 12,

                    ),
                    ),
                    Spacer(),
                    Card(
                      color: blueColor,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: IconButton(onPressed: (){},
                            icon: Icon(Icons.file_copy,color: whiteColor,size: 18,)),
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            DepositBetWidget(

              // width: context.width*0.9,height: context.height*0.8,
            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: 'My VIP Level', onPressed: (){},height: context.height*0.07,width: context.width*0.2,fontSize: context.width*0.015,),
                  SizedBox(width: 20,),
                  CustomButton(text: 'Invitation', onPressed: (){},height: context.height*0.07,width: context.width*0.2,fontSize: context.width*0.015,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.width*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: 'Personal Center', onPressed: (){},height: context.height*0.07,width: context.width*0.2,fontSize: context.width*0.015,),
                  SizedBox(width: 20,),
                  CustomButton(text: 'Game history', onPressed: (){},height: context.height*0.07,width: context.width*0.2,fontSize: context.width*0.015,),
                ],
              ),
            ),
            SizedBox(height: context.height*0.05,),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: context.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(text: 'Gmail', onPressed: (){},height: context.height*0.04,width: context.width*0.2,prefix: Icon(Icons.g_mobiledata,color: whiteColor,),isFilled: false,backgroundColor: redColor,),
                  SizedBox(width: context.width*0.02,),
                  CustomButton(text: 'Facebook', onPressed: (){},height: context.height*0.04,width: context.width*0.2,prefix: Icon(Icons.facebook,color: whiteColor,),isFilled: false,backgroundColor: blueColor,),


                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
