import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/assests_constant.dart';
import '../../../../core/constant/colors.dart';
import '../../LoginScreen/widgets/CustomButton.dart';
import '../../vip/vip_screen.dart';

class LiveChat extends StatelessWidget {

  LiveChat({Key? key}) : super(key: key,);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xff161F2C),
      title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        SizedBox(width: 1,),
        Text('LIVE CHAT',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            IconButton(onPressed: (){Get.back();}, icon: Icon(Icons.close,color: whiteColor,))

          ]),
      content: SizedBox(
        height: context.height/1.3,
        width: context.width/1.5,
        child: Column(
          children: [
            Container(
              height: context.height*0.7,
              width: context.width*0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primaryColor),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            children: [
                            Card(
                              color: secondaryColor,
                              child: SizedBox(
                                height: 70,
                                child: ListTile(
                                  leading: Ink(
                                      decoration: ShapeDecoration(
                                        color: redColor, // Background color
                                        shape: CircleBorder(),
                                      ),
                                      child: Icon(Icons.add,size: 50,color: whiteColor,)),
                                  title: Text('Name',style: TextStyle(color:whiteColor.withOpacity(0.5)),),
                                  subtitle: Text('name details',style: TextStyle(color: whiteColor.withOpacity(0.5))),
                                ),
                              ),
                            )
                          ],),
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(width: 10,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10), color: secondaryColor),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(children: [],),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // CustomButton(text: 'Personal Center', onPressed: (){},height: context.height*0.07,width: context.width*0.2,fontSize: context.width*0.015,),
          ],
        ),
      )
    );
  }
}
