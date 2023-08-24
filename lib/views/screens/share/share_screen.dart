import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';
import 'package:hllive/views/screens/share/share_controller.dart';
 import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/styles.dart';
import '../game/game_screen.dart';


class ShareScreen extends StatelessWidget {
  double width;
  ShareScreen({required this.width,Key? key}) : super(key: key);

  final ShareScreenController controller = Get.put(ShareScreenController());

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
              width: width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: secondaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Referral Program', style: TextStyles.bodyText?.copyWith(color: whiteColor),),
                      SizedBox(height: 10,),
                      // Padding(
                      //   padding: EdgeInsets.symmetric(horizontal: 20),
                      //   child: Container(
                      //     height: context.height * 0.08, // Use responsive_sizer for height
                      //     decoration: BoxDecoration(
                      //       color: primaryColor,
                      //       borderRadius: BorderRadius.circular(10), // Use responsive_sizer for borderRadius
                      //
                      //     ),
                      //     child: Padding(
                      //       padding: EdgeInsets.symmetric(horizontal: 12),
                      //       child: TabBar(
                      //         padding: EdgeInsets.symmetric(
                      //            vertical:  6,
                      //         ), // Use responsive_sizer for padding
                      //         controller: controller.tabController,
                      //         labelColor: Colors.white,
                      //         unselectedLabelColor: whiteColor,
                      //
                      //         indicator: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(4), // Use responsive_sizer for borderRadius
                      //           color: Color(0xff2283F6),
                      //         ),
                      //         tabs:    [
                      //           Padding(
                      //             padding: EdgeInsets.symmetric(horizontal: 20),
                      //             child: Tab(text: 'FORMS'),
                      //           ),
                      //           Padding(
                      //             padding: EdgeInsets.symmetric(horizontal: 30),
                      //             child: Tab(text: 'TO INVITE'),
                      //           ),
                      //           Padding(
                      //             padding: EdgeInsets.symmetric(horizontal: 30),
                      //             child: Tab(text: 'STATISTICS'),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 20,),
                      // SizedBox(
                      //   height: 500,
                      //   child: TabBarView(
                      //     controller: controller.tabController,
                      //     physics: const NeverScrollableScrollPhysics(), // Disable swiping between tabs
                      //     children: [
                      //      Text('Tab1'),
                      //      Text('Tab2'),
                      //      Text('Tab3')
                      //     ],
                      //   ),
                      // ),



                      CustomTabBar(width: width,)





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
class CustomTabBar extends StatefulWidget  {
    double width;
  CustomTabBar({required this.width,Key? key}) : super(key: key);


  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> tabs = [
    Tab(text: 'FORMS'),
    Tab(text: 'TO INVITE'),
    Tab(text: 'STATISTICS'),
  ];

  int selectedIndex = 0;
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: tabs.length);
    _tabController.addListener(() {
      setState(() {
        selectedIndex = _tabController.index;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70, // Adjust the height as needed
          decoration: BoxDecoration(
            color: primaryColor, // Background color for the entire TabBar
          ),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: _tabController,
            padding: EdgeInsets.symmetric(
              vertical:  6,
            ),

            tabs: tabs,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            indicator: BoxDecoration(
              color: selectedIndex == 0 ? Color(0xff2283F6): Color(0xff2283F6), // Selected and unselected tab color
            ),
            labelColor: primaryColor, // Text color for selected tab
            unselectedLabelColor: whiteColor, // Text color for unselected tab
          ),
        ),
        IndexedStack(
          index: selectedIndex,
          children: [
            Column(children: [
              SizedBox(height: 20,),
              Container(height: context.height * 0.08,
                width: widget.width * 0.8,
                decoration: BoxDecoration(
                    color: Color(0xff2283F6),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_today_outlined, color: whiteColor),
                          SizedBox(width: 10,),
                          Text('Start Date', style: TextStyles.buttonText,),



                        ],),
                      Row(children: [
                        Icon(Icons.calendar_today_outlined, color: whiteColor),
                        SizedBox(width: 10,),
                        Text('End Date', style: TextStyles.buttonText,),



                      ],)
                    ],
                  ),
                ),

              ),
              SizedBox(height: 30,),
              Container(height: context.height * 0.08,
                width: widget.width * 0.8,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButtonWidget(
                          buttonText: 'INVITATION BONUS',
                          buttonColor: Color(0xff2283F6),
                          buttonRadius: 4,
                        ),
                      ),
                      Expanded(child: ElevatedButtonWidget(
                        buttonText: 'Betting Comission',
                        buttonColor: secondaryColor,
                        buttonRadius: 4,
                      ))

                    ],
                  ),
                ),

              ),
              SizedBox(height: 30,),
              Container(height: context.height * 0.08,
                width: widget.width * 0.8,
                decoration: BoxDecoration(
                    color:redColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bonus', style: TextStyles.buttonText,),
                      Text('User', style: TextStyles.buttonText,),
                      Text('Hour', style: TextStyles.buttonText,)
                    ],
                  ),
                ),

              ),
              SizedBox(height: 30,),
              Center(child: Text('No data', style: TextStyles.buttonText?.copyWith(fontSize: 22)),),
              SizedBox(height: 60,),


            ],),

            //Second tab bar of to invite
            Column(
              children: [
                SizedBox(height: 30,),
                Container(
                  width: widget.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        SizedBox(height: 10,),

                        Text('INVITE A PARTNER', style: TextStyles.buttonText?.copyWith(
                          fontSize:16,
                        ),),
                        SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Invitation URL:', style: TextStyles.buttonText?.copyWith(
                                      fontSize: 14,
                                    )
                                    ),
                                    SizedBox(height: 6,),

                                    Container(
                                      height: 40,
                                      width: widget.width * 0.3,
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('http://www.google.com/user123343',
                                                style: TextStyles.greySmallBodyText?.copyWith(
                                                  fontSize: 14,
                                                )
                                            ),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.copy, color: whiteColor,))
                                          ],
                                        ),
                                      ),


                                    )

                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Text('Copy the invitation code', style: TextStyles.buttonText?.copyWith(
                                      fontSize: 14,
                                    )
                                    ),
                                    SizedBox(height: 6,),

                                    Container(
                                      height: 40,
                                      width: widget.width * 0.3,
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.circular(4)

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('http://www.google.com/user123343',
                                                style: TextStyles.greySmallBodyText?.copyWith(
                                                  fontSize: 14,
                                                )
                                            ),
                                            IconButton(onPressed: (){},
                                                icon: Icon(Icons.copy, color: whiteColor,))
                                          ],
                                        ),
                                      ),


                                    )
                                  ],
                                )

                              ]
                          ),
                        ),
                        SizedBox(height: 20,),

                      ],),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: context.height * 0.5,
                  width: widget.width,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(6)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(children: [
                            Text('Guest Users', style: TextStyles.buttonText?.copyWith(
                              fontSize:16,
                            ),),
                            Text('0', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                                color: Color(0xffFFA101)
                            ),),


                          ],),
                          Column(children: [
                            Text('Deposited Users', style: TextStyles.buttonText?.copyWith(
                              fontSize:16,
                            ),),
                            Text('0', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                                color: Color(0xffFFA101)

                            ),),


                          ],),
                          Column(children: [
                            Text('Bonus Today', style: TextStyles.buttonText?.copyWith(
                              fontSize:16,
                            ),),
                            Text('0', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                                color: Color(0xffFFA101)

                            ),),


                          ],),
                          Column(children: [
                            Text('Yesterday Bonus', style: TextStyles.buttonText?.copyWith(
                              fontSize:16,
                            ),),
                            Text('0', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                                color: Color(0xffFFA101)

                            ),),


                          ],),


                        ],
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Text(
                          'Are you a blogger with a large audience and large following?\n'
                              'We offer you a partnership program with a special referral bonus.Please contact our manager to discuss terms.\n'
                              'https://wa.me/message/L7OEABEFPVD4D1Important:\n'
                              ' Only users who have passed the  requirements and been approved by their\n'
                              ' managercan participate in the program.'


                          , style: TextStyles.buttonText?.copyWith(
                          fontSize:12,
                        ),),
                      ),

                    ],
                  ),
                )


              ],
            ),

            // 3rd AppBar

            Column(children: [
              SizedBox(height: 30,),

              Container(
                width: widget.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('TODAY PROFIT', style: TextStyles.buttonText?.copyWith(
                        fontSize: 16,
                      ),),
                      SizedBox(height: 6,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10), // Use responsive_sizer for borderRadius
                              child: SizedBox(
                                  width: widget.width * 0.28,
                                  child: Stack(
                                    children: [
                                      LinearProgressIndicator(
                                        minHeight:25,
                                        // Use responsive_sizer for minHeight
                                        backgroundColor: secondaryColor,

                                        valueColor:
                                        const AlwaysStoppedAnimation<
                                            Color>(
                                            Color(0xff2283F6)),
                                        value: 0.6,
                                      ),
                                      Center(child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Invitation Bonus', style: TextStyles.buttonText?.copyWith(
                                            fontSize: 12
                                        ),),
                                      ))
                                    ],
                                  )
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10), // Use responsive_sizer for borderRadius
                              child: SizedBox(
                                  width: widget.width * 0.28,
                                  child: Stack(
                                    children: [
                                      LinearProgressIndicator(
                                        minHeight:25,
                                        // Use responsive_sizer for minHeight
                                        backgroundColor: secondaryColor,

                                        valueColor:
                                        const AlwaysStoppedAnimation<
                                            Color>(
                                            Color(0xff2283F6)),
                                        value: 0.6,
                                      ),
                                      Center(child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text('Betting commission', style: TextStyles.buttonText?.copyWith(
                                            fontSize: 12
                                        ),),
                                      ))
                                    ],
                                  )
                              ),
                            ),
                          ],),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Column(children: [
                              Text('PROFIT TODAY', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                              ),),
                              Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                  color: Color(0xffFFA101)

                              ),),


                            ],),
                            Column(children: [
                              Text('Betting commission', style: TextStyles.buttonText?.copyWith(
                                fontSize:16,
                              ),),
                              Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                  color: Color(0xffFFA101)

                              ),),


                            ],),
                            Column(
                              children: [
                                Text('Invitation Bonus', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                ),),
                                Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                    fontSize:16,
                                    color: Color(0xffFFA101)

                                ),),


                              ],),


                          ],
                        ),
                      ),


                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Your profit will consist of two parts, namely [Invitation Bonus]\n"
                                  " [Betting Commission]",
                                style: TextStyles.buttonText?.copyWith(
                                  fontSize:12,

                                ),),
                              Text("Betting Commission:",
                                style: TextStyles.buttonText?.copyWith(
                                  fontSize:12,

                                ),),
                              Text(" This will be your main income and you will receive a different\n"
                                  "percentage of every bet you invite players to place in commission\n"
                                  "Invitation Bonus:"
                                ,
                                style: TextStyles.buttonText?.copyWith(
                                  fontSize:12,

                                ),),
                            ],
                          ),
                          Column(
                            children: [
                              Text("The user you invite to deposit for the first time, you will receive\n cash bonus of R\$12",
                                style: TextStyles.buttonText?.copyWith(
                                  fontSize:12,

                                ),),
                            ],
                          ),


                        ],
                      ),


                      SizedBox(height: 20,),

                    ],
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Container(
                width: widget.width,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('TOTAL PROFIT' , style: TextStyles.buttonText?.copyWith(
                            fontSize: 16
                        ),),
                        Image.asset(


                          AppAssets.imgProfit,
                          height: context.height * 0.1,
                          width: widget.width* 0.1,
                          fit: BoxFit.contain,
                        ),

                      ],
                    ),
                    SizedBox(width: 50,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: widget.width*0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Text('TOTAL BONUS', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                ),),
                                Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                    fontSize:16,
                                    color: Color(0xffFFA101)
                                ),),


                              ],),
                              Column(children: [
                                Text('Betting commission', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                ),),
                                Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                    fontSize:16,
                                    color: Color(0xffFFA101)

                                ),),


                              ],),

                              Column(children: [
                                Text('Invitation Bonus', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                ),),
                                Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                    fontSize:16,
                                    color: Color(0xffFFA101)

                                ),),


                              ],),

                              Column(children: [
                                Text('INVITE ACHIEVEMENT BONUS', style: TextStyles.buttonText?.copyWith(
                                  fontSize:16,
                                ),),
                                Text('R\$0', style: TextStyles.buttonText?.copyWith(
                                    fontSize:16,
                                    color: Color(0xffFFA101)

                                ),),


                              ],),


                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Text(
                            'Deposited Users: \n'
                                'You earn a commission for every bet you invite users to place,  win or lose.\n'
                                'So all you have to do is improve your gaming skills, think how to  win the game and share it with everyone to\n'
                                'help more people win with your method.\n'
                                'We want all players to have fun at BETFIERY, whether it is the fun  of winning bets or the game itself!'


                            , style: TextStyles.buttonText?.copyWith(
                            fontSize:12,
                          ),),
                        ),

                      ],
                    )
                  ],
                ),
              )

            ],)
          ],
        ),
      ],
    );
  }
}