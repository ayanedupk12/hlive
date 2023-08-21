import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDialogue extends StatelessWidget {

   ProfileDialogue({Key? key}) : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Center(child: Text(userModel.firstName!+' '+userModel.lastName!,style: boldBlackTextStyle,)),
      // content: SizedBox(
      //     height: Get.height/4,
      //     width: Get.width/3,
      //     child: GetBuilder<SetUpUserController>(
      //       builder: (__) {
      //         __.userStatus=userModel.status!;
      //         __.userCategory=userModel.category!;
      //         log(__.userCategory);
      //         return Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             type=='role'
      //                 ?Card(
      //               // decoration: BoxDecoration(
      //               //     borderRadius: BorderRadius.circular(7),
      //               //     border: Border.all(
      //               //         color: bColor
      //               //     )
      //               // ),
      //               child: Padding(
      //                 padding: const EdgeInsets.all(15.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Text('User Role'),
      //                     CustomDropdownFormField(
      //                       text: __.userCategory,
      //                       onChange: (val){
      //                       __.userCategory=val!;
      //                       log(__.userCategory);
      //                       },
      //                       actionsList: [
      //                         'Account Officer',
      //                         // 'marchant',
      //                         "market Accountant",
      //                         'Credit Manager',
      //                         'Operation Manager',
      //                         'Customer Service Officer',
      //                         'Customer Service Manager',
      //                         'Finance Manager',
      //                         'CEO',
      //                         'Administrator'],
      //                       height: 30,
      //                       width: 250,
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ):
      //             // SizedBox(height: Get.height*0.05,),
      //             type=='delete'?
      //                 SizedBox()
      //                 :Card(
      //               // decoration: BoxDecoration(
      //               //     borderRadius: BorderRadius.circular(7),
      //               //     border: Border.all(
      //               //         color: bColor
      //               //     )
      //               // ),
      //               child: Padding(
      //                 padding: const EdgeInsets.all(15.0),
      //                 child: Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Text('User Status'),
      //
      //                     CustomDropdownFormField(
      //                       text:__.userStatus,
      //                       onChange: (val){
      //                         __.userStatus=val!;
      //                         // __.update();
      //                       },
      //                       actionsList: ['Active',"Inactive"],
      //                       height: 30,
      //                       width: 150,
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ),
      //             SizedBox(height: Get.height*0.05,),
      //             MyButton(
      //               color: type=='delete'?Colors.red:Colors.blue,
      //               loading: __.isLoadingAlert,
      //               onPress: ()async{
      //               if(type=='role'){
      //                 if(userModel.category!=__.userCategory){
      //                   await __.changeRole(userModel);
      //
      //                 }else{
      //                   Get.back();
      //                 }
      //               }else{
      //                 if(type=='delete'){
      //                  await __.deleteUser(userModel);
      //                 }else{
      //                   log('message');
      //                   if(userModel.status!=__.userStatus){
      //                     await __.updateUserStatus(userModel, __.userStatus.toLowerCase());
      //                     // Get.back();
      //                   }else{
      //                     log('message1');
      //                     Get.back();
      //                   }
      //                 }
      //
      //               }
      //             },title: type=='role'?'Change Role':type=='delete'?'Delete':'Change Status',)
      //           ],
      //         );
      //       }
      //     )
      // ),
    );
  }
}
