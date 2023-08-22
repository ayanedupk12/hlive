import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/screens/LoginScreen/widgets/CustomButton.dart';
 import 'package:hllive/views/widgets/button_widget.dart';

import '../../../core/constant/assests_constant.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/styles.dart';
import '../PrivacyPolicy/PrivacyPolicy.dart';
import '../game/game_screen.dart';


class CashBackScreen extends StatelessWidget {
  CashBackScreen({Key? key}) : super(key: key);

 // final ShareScreenController controller = Get.put(ShareScreenController());

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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('CASHBACK', style: TextStyles.bodyText?.copyWith(color: whiteColor),),
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



                        CustomTabBar()





                      ],
                    ),
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

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> tabs = [
    Tab(text: 'MY CASHBACK'),
    Tab(text: 'ABOUT CASHBACK'),
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
            // padding: EdgeInsets.symmetric(
            //   vertical:  1,
            // ),

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
                width: context.width * 0.8,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: context.height*0.15,
                    child: Center(
                      child: ListTile(
                        leading:Image.asset(AppAssets.handIcon,height: context.height*0.05,width: context.height*0.05,),
                        title:Text('VIP 0 CASHBACK', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor),),
                        trailing: SizedBox(
                          width: context.width*0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Record countdown : ', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor),),
                              Text('23:23:45', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: orangeColor),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ),

              ),
              SizedBox(height: 30,),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 5/6,
                    crossAxisCount: 2,
                    mainAxisExtent: context.height*0.1,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20
                  ),
                  itemBuilder: (ctxt,index){
                    return Container(
                      height: context.height * 0.2,
                      width: context.width,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(20),
                        border: Border.all(color:whiteColor),
                          image: const DecorationImage(
                              image: AssetImage(
                                AppAssets.imgRonaldo,
                              ),
                              fit: BoxFit.cover)),
                    );
                  }),
              SizedBox(height: 30,),
              Container(height: context.height * 0.08,
                width: context.width * 0.8,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: context.height*0.15,
                    child: Center(
                      child: ListTile(
                        // leading:Image.asset(AppAssets.handIcon,height: context.height*0.05,width: context.height*0.05,),
                        title:Text('Cashback accumulated Bonus History', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor),),
                        trailing: SizedBox(
                          width: context.width*0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('R\$ 0.0', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: orangeColor),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ),

              ),
              SizedBox(height: 30,),
              Container(height: context.height * 0.05,
                width: context.width * 0.8,
                decoration: BoxDecoration(
                    color:redColor,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Data', style: TextStyles.buttonText,),
                      Text('VIP', style: TextStyles.buttonText,),
                      Text('APOSTAS TOTIAS', style: TextStyles.buttonText,),
                      Text('BONUS', style: TextStyles.buttonText,),
                      Text('STATUS', style: TextStyles.buttonText,),
                      Text('ACTION', style: TextStyles.buttonText,),
                    ],
                  ),
                ),

              ),
              SizedBox(height: 30,),
              SizedBox(height: 30,),
              Center(child: Text('No data', style: TextStyles.buttonText?.copyWith(fontSize: 22)),),
              SizedBox(height: 60,),


            ],),

            //Second tab bar of to invite
            Column(
              children: [
                SizedBox(height: 20,),
                Container(height: context.height * 0.08,
                  width: context.width * 0.8,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: context.height*0.15,
                        child: Center(
                          child: ListTile(
                            leading:Image.asset(AppAssets.handIcon,height: context.height*0.05,width: context.height*0.05,),
                            title:Text('THE MOST GENEROUS CATCHIER', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor),),

                          ),
                        ),
                      )
                  ),

                ),
                SizedBox(height: 30,),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      CashBackContainer(width: context.width*0.3,),
                      SizedBox(width: context.width*0.05,),
                      CashBackContainer(width: context.width*0.3,
                        containerColor: Color(0xffF9BB8D),
                        title: 'SLOT',
                        numberPercent: '20',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: context.height * 0.08,
                  width: context.width * 0.8,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        height: context.height*0.15,
                        child: Center(
                          child: ListTile(
                            minLeadingWidth:context.width*0.1,
                            leading:Image.asset(AppAssets.handIcon,height: context.height*0.05,width: context.height*0.05,),
                            title:Text('Daily discount', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor),),
                            trailing: SizedBox(
                              width: context.width*0.3,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text('Cashback is settled daily and can be claimed the next day', style: TextStyles.smallWhiteText?.copyWith(fontSize: 12, color: whiteColor),),
                                  // Text('23:23:45', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: orangeColor),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                  ),

                ),
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text('How is it works?', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5,),
                SizedBox(
                    width: context.width*0.75,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('You play and get some cash back based on the amount  wagered. This feature is available to everyone from the  moment they start using the platform. ', style: TextStyles.smallWhiteText?.copyWith(fontSize: 14, color: whiteColor),))),
                SizedBox(height: 10,),

                Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      CashBackContainer(width: context.width*0.23,leftRoundness: 10,),
                      CashBackContainer(width: context.width*0.23,
                        containerColor: Color(0xffF9BB8D),
                        title: 'SLOT',
                        numberPercent: '20',
                      ),
                      CashBackContainer(width: context.width*0.23,rightRoundness: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                CustomButton(text: 'Play Now', onPressed: (){},backgroundColor: blueColor,),
                SizedBox(height: 30,),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('cashback percentage', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor,fontWeight: FontWeight.bold),)
                ),
                SizedBox(height: 5,),
                SizedBox(
                    width: context.width*0.75,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('The more you play and the higher your  VIP level, the more money you will  receive. Receive up to 20% cashback.', style: TextStyles.smallWhiteText?.copyWith(fontSize: 14, color: whiteColor),))),

                GridView.builder(
                    shrinkWrap: true,
                    itemCount: 11,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 5/6,
                        crossAxisCount: 5,
                        mainAxisExtent: context.height*0.2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20
                    ),
                    itemBuilder: (ctxt,index){
                      return Container(
                        width: context.width * 0.13,
                        height: context.width*0.13,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: primaryColor
                        ),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.
                                  imgCrown,
                                  height: Get.height * 0.02,
                                  width: Get.width * 0.02,
                                  fit: BoxFit.contain,
                                ),
                                SizedBox(height: 10,),
                                Center(child: Text('VIP ${index}', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: whiteColor,fontWeight: FontWeight.bold),)),

                                SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('ORIGINAL GAMES', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: whiteColor,fontWeight: FontWeight.bold),),
                                      Text('0.45%', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: orangeColor,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('EVO', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: whiteColor,fontWeight: FontWeight.bold),),
                                      Text('0.45%', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: orangeColor,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Sports', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: whiteColor,fontWeight: FontWeight.bold),),
                                      Text('0.45%', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: orangeColor,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('LIVE CASINO', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: whiteColor,fontWeight: FontWeight.bold),),
                                      Text('0.45%', style: TextStyles.smallWhiteText?.copyWith(fontSize: 9, color: orangeColor,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                SizedBox(height: 30,),
                Align(
                    alignment: Alignment.topLeft,
                    child:
                    Text('Common problem', style: TextStyles.smallWhiteText?.copyWith(fontSize: 16, color: whiteColor,fontWeight: FontWeight.bold),)
                ),
                SizedBox(
                  height: context.height*0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Left Column
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'When can I get my cashback?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Cashback is available after 00:00 the next day.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'How can I claim my cashback?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Cashback can be claimed in my Cashback - Unclaimed Bonus.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'Where can I get my cashback?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'You will be notified when a cashback is available for collection.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Right Column
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'How is the refund calculated?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Cashback is calculated based on all your game bets in a day, using the following formula: Cashback amount = the amount you bet during the game * Game cashback amount %.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'What does the cashback amount depend on?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'The cashback percentage depends on your level and the type of game you are playing. By playing, you can increase your VIP level and thus increase the cashback percentage. Cashback percentage may vary between game types at the same VIP level.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'Restrictions and Prohibitions',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Cashback bonuses are awarded to a single person (i.e., a single account and a single IP address). Players cannot use multiple accounts to receive cashback and BETFIERY reserves the right to completely disable the cashback feature for users who handle cashback receipts using multiple schemes and multiple accounts. BETFIERY also reserves the right to disable the cashback feature for users at any time without prior notice if such manipulation is suspected. BETFIERY reserves the right to change the calculations, mechanics, and rules of the cashback feature at any time.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'Are there any restrictions on withdrawals?',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'There is no limit to the withdrawal amount.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white, // Set text color to white
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )

              ],
            ),

            // 3rd AppBar

            // Column(children: [
            //   SizedBox(height: 30,),
            //
            //   Container(
            //     width: context.width,
            //     decoration: BoxDecoration(
            //       color: primaryColor,
            //       borderRadius: BorderRadius.circular(6),
            //     ),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text('TODAY PROFIT', style: TextStyles.buttonText?.copyWith(
            //             fontSize: 16,
            //           ),),
            //           SizedBox(height: 6,),
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 20),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //                 ClipRRect(
            //                   borderRadius: BorderRadius.circular(10), // Use responsive_sizer for borderRadius
            //                   child: SizedBox(
            //                       width: context.width * 0.28,
            //                       child: Stack(
            //                         children: [
            //                           LinearProgressIndicator(
            //                             minHeight:25,
            //                             // Use responsive_sizer for minHeight
            //                             backgroundColor: secondaryColor,
            //
            //                             valueColor:
            //                             const AlwaysStoppedAnimation<
            //                                 Color>(
            //                                 Color(0xff2283F6)),
            //                             value: 0.6,
            //                           ),
            //                           Center(child: Padding(
            //                             padding: const EdgeInsets.all(4.0),
            //                             child: Text('Invitation Bonus', style: TextStyles.buttonText?.copyWith(
            //                                 fontSize: 12
            //                             ),),
            //                           ))
            //                         ],
            //                       )
            //                   ),
            //                 ),
            //                 ClipRRect(
            //                   borderRadius: BorderRadius.circular(10), // Use responsive_sizer for borderRadius
            //                   child: SizedBox(
            //                       width: context.width * 0.28,
            //                       child: Stack(
            //                         children: [
            //                           LinearProgressIndicator(
            //                             minHeight:25,
            //                             // Use responsive_sizer for minHeight
            //                             backgroundColor: secondaryColor,
            //
            //                             valueColor:
            //                             const AlwaysStoppedAnimation<
            //                                 Color>(
            //                                 Color(0xff2283F6)),
            //                             value: 0.6,
            //                           ),
            //                           Center(child: Padding(
            //                             padding: const EdgeInsets.all(4.0),
            //                             child: Text('Betting commission', style: TextStyles.buttonText?.copyWith(
            //                                 fontSize: 12
            //                             ),),
            //                           ))
            //                         ],
            //                       )
            //                   ),
            //                 ),
            //               ],),
            //           ),
            //           SizedBox(height: 10,),
            //           Padding(
            //             padding: const EdgeInsets.symmetric(horizontal: 12),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               children: [
            //
            //                 Column(children: [
            //                   Text('PROFIT TODAY', style: TextStyles.buttonText?.copyWith(
            //                     fontSize:16,
            //                   ),),
            //                   Text('R\$0', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                       color: Color(0xffFFA101)
            //
            //                   ),),
            //
            //
            //                 ],),
            //                 Column(children: [
            //                   Text('Betting commission', style: TextStyles.buttonText?.copyWith(
            //                     fontSize:16,
            //                   ),),
            //                   Text('R\$0', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                       color: Color(0xffFFA101)
            //
            //                   ),),
            //
            //
            //                 ],),
            //                 Column(
            //                   children: [
            //                     Text('Invitation Bonus', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                     ),),
            //                     Text('R\$0', style: TextStyles.buttonText?.copyWith(
            //                         fontSize:16,
            //                         color: Color(0xffFFA101)
            //
            //                     ),),
            //
            //
            //                   ],),
            //
            //
            //               ],
            //             ),
            //           ),
            //
            //
            //           SizedBox(height: 20,),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text("Your profit will consist of two parts, namely [Invitation Bonus]\n"
            //                       " [Betting Commission]",
            //                     style: TextStyles.buttonText?.copyWith(
            //                       fontSize:12,
            //
            //                     ),),
            //                   Text("Betting Commission:",
            //                     style: TextStyles.buttonText?.copyWith(
            //                       fontSize:12,
            //
            //                     ),),
            //                   Text(" This will be your main income and you will receive a different\n"
            //                       "percentage of every bet you invite players to place in commission\n"
            //                       "Invitation Bonus:"
            //                     ,
            //                     style: TextStyles.buttonText?.copyWith(
            //                       fontSize:12,
            //
            //                     ),),
            //                 ],
            //               ),
            //               Column(
            //                 children: [
            //                   Text("The user you invite to deposit for the first time, you will receive\n cash bonus of R\$12",
            //                     style: TextStyles.buttonText?.copyWith(
            //                       fontSize:12,
            //
            //                     ),),
            //                 ],
            //               ),
            //
            //
            //             ],
            //           ),
            //
            //
            //           SizedBox(height: 20,),
            //
            //         ],
            //       ),
            //     ),
            //   ),
            //
            //   SizedBox(height: 30,),
            //   Container(
            //     width: context.width,
            //     decoration: BoxDecoration(
            //         color: primaryColor,
            //         borderRadius: BorderRadius.circular(8)
            //     ),
            //     child: Row(
            //       children: [
            //         Column(
            //           children: [
            //             Text('TOTAL PROFIT' , style: TextStyles.buttonText?.copyWith(
            //                 fontSize: 16
            //             ),),
            //             Container(
            //               height: context.height * 0.1,
            //               width: context.width * 0.1,
            //               color: whiteColor,
            //               child: Center(
            //                 child: Text('Image here'),
            //               ),
            //             ),
            //
            //           ],
            //         ),
            //         SizedBox(width: 50,),
            //         Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             SizedBox(
            //               width: context.width*0.6,
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Column(children: [
            //                     Text('Guest Users', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                     ),),
            //                     Text('0', style: TextStyles.buttonText?.copyWith(
            //                         fontSize:16,
            //                         color: Color(0xffFFA101)
            //                     ),),
            //
            //
            //                   ],),
            //                   Column(children: [
            //                     Text('Deposited Users', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                     ),),
            //                     Text('0', style: TextStyles.buttonText?.copyWith(
            //                         fontSize:16,
            //                         color: Color(0xffFFA101)
            //
            //                     ),),
            //
            //
            //                   ],),
            //
            //                   Column(children: [
            //                     Text('Bonus Today', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                     ),),
            //                     Text('0', style: TextStyles.buttonText?.copyWith(
            //                         fontSize:16,
            //                         color: Color(0xffFFA101)
            //
            //                     ),),
            //
            //
            //                   ],),
            //
            //                   Column(children: [
            //                     Text('Yesterday Bonus', style: TextStyles.buttonText?.copyWith(
            //                       fontSize:16,
            //                     ),),
            //                     Text('0', style: TextStyles.buttonText?.copyWith(
            //                         fontSize:16,
            //                         color: Color(0xffFFA101)
            //
            //                     ),),
            //
            //
            //                   ],),
            //
            //
            //                 ],
            //               ),
            //             ),
            //             SizedBox(height: 20,),
            //             Padding(
            //               padding: const EdgeInsets.only(left: 60),
            //               child: Text(
            //                 'Are you a blogger with a large audience and large following?\n'
            //                     'We offer you a partnership program with a special referral bonus.Please contact our manager to discuss terms.\n'
            //                     'https://wa.me/message/L7OEABEFPVD4D1Important:\n'
            //                     ' Only users who have passed the  requirements and been approved by their\n'
            //                     ' managercan participate in the program.'
            //
            //
            //                 , style: TextStyles.buttonText?.copyWith(
            //                 fontSize:12,
            //               ),),
            //             ),
            //
            //           ],
            //         )
            //       ],
            //     ),
            //   )
            //
            // ],)
          ],
        ),
      ],
    );
  }
}