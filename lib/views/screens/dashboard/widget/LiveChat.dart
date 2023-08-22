import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/screens/SignUpScreen/widgets/CustomTextField.dart';
import 'package:hllive/views/widgets/checkBox.dart';

import '../../../../core/constant/assests_constant.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/styles.dart';
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                            ),
                              SizedBox(height: 30,),
                              Card(
                                color: secondaryColor,
                                child: SizedBox(
                                  height: context.height*0.54,
                                  width: context.width,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20,),
                                      Image.asset(AppAssets.handIcon,height: context.height*0.1,width: context.height*0.1,),
                                      SizedBox(height: 20,),
                                      Text('What do you need help with?', style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),),
                                      SizedBox(height: 20,),
                                      CustomButton(text: 'FAQ', onPressed: (){},height: context.height*0.04,width: context.width*0.15,fontSize: context.width*0.01,),
                                      SizedBox(height: 20,),
                                      CustomButton(text: 'Bonus Description', onPressed: (){},height: context.height*0.04,width: context.width*0.15,fontSize: context.width*0.01,),
                                      SizedBox(height: 20,),
                                      CustomButton(text: 'Referral Bonus', onPressed: (){},height: context.height*0.04,width: context.width*0.15,fontSize: context.width*0.01,),
                                      SizedBox(height: 20,),
                                      CustomButton(text: 'Withdrawal Instructions', onPressed: (){},height: context.height*0.04,width: context.width*0.15,fontSize: context.width*0.008,),
                                      SizedBox(height: 20,),
                                      CustomButton(text: 'account history', onPressed: (){},height: context.height*0.04,width: context.width*0.15,fontSize: context.width*0.01,),

                                    ],
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30,),
                            Text('USER ID', style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),),
                              SizedBox(height: 5,),
                              CustomTextField1(
                                width: context.width*0.18,
                              prefixIcon: Icon(Icons.email),
                                height: context.height*.05,
                                labelText: '', controller: TextEditingController(),enabled: false,
                            ),
                              SizedBox(height: 20,),
                              Text('Game Account', style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),),
                              SizedBox(height: 5,),
                              CustomTextField1(
                                width: context.width*0.18,
                                prefixIcon: Icon(Icons.email),
                                height: context.height*.05,
                                labelText: '', controller: TextEditingController(),enabled: false,
                              ),
                              SizedBox(height: context.height*0.05,),
                              Text('Please select your question?', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              CustomCheckbox(title: 'I made a deposit but there is no money in my game account', onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: 'I get an error when withdrawing money', onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: "I withdraw money from the game but I haven't received it yet", onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: 'I want to change my PIX key', onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: "I can't register a game account", onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: 'Unable to login game account', onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: 'Questions about the game', onChanged: (val){},width: context.width*0.15,),
                              SizedBox(height: 5,),
                              CustomCheckbox(title: 'Other questions', onChanged: (val){},width: context.width*0.15,),
                            ],),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      )
    );
  }
}
