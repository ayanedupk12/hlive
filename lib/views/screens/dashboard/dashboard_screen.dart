import 'package:flutter/material.dart';
import 'package:hllive/core/constant/colors.dart';
import 'package:hllive/views/screens/dashboard/widget/LiveChat.dart';
import 'package:hllive/views/screens/dashboard/widget/MissionsScreen.dart';
import 'package:hllive/views/screens/game/game_screen.dart';
import 'package:hllive/views/screens/share/share_screen.dart';

import '../../responsive.dart';
import '../../widgets/RoundButton.dart';
import '../BonusCode/BonusCode.dart';
import '../CashBack/CashBack.dart';
import '../PrivacyPolicy/PrivacyPolicy.dart';
import '../game/play_game_screen.dart';
import '../home/home.dart';
import '../vip/vip_screen.dart';
import 'dashboard_controller.dart';
import 'widget/side_menu.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
        init: DashboardController(),
        builder: (dashboardController) {
          dashboardController.dashboardWidth(dashboardController.showDrawer
              ? context.width * 0.91
              : context.width * 1.05);
          return Scaffold(
            backgroundColor: primaryColor,
            key: dashboardController.scaffoldKey,
            // drawer: Padding(
            //   padding: const EdgeInsets.all(18.0),
            //   child: SideMenu(),
            // ),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    dashboardController.homeScreenHeader(context),
                    // dashboardController.selectedOptionIndex == 0
                    //     ? dashboardController.homeScreenHeader(context)
                    //     : dashboardController.vipHeader(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomSideBar(),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: dashboardController
                                .pages[dashboardController.selectedOptionIndex],
                          ),
                        ),

                        // Padding(
                        //   padding:  EdgeInsets.symmetric(vertical: context.height*0.07,horizontal: 8),
                        //   child: Column(
                        //     mainAxisAlignment: MainAxisAlignment.end,
                        //     children: [
                        //     RoundIconButton(backgroundColor: orangeColor, onPressed: () {Get.dialog(MissionsScreen());}, child: Icon(Icons.wallet_giftcard,color: whiteColor,),),
                        //     SizedBox(height: 10,),
                        //       RoundIconButton(backgroundColor: blueColor, onPressed: () {Get.dialog(LiveChat());}, child: Icon(Icons.message,color: whiteColor,),),
                        //   ],),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class CustomSideBar extends StatelessWidget {
  const CustomSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (dashboardController) {
      return AnimatedOpacity(
        opacity: dashboardController.showDrawer ? 1.0 : 0.0,
        duration: Duration(seconds: 3),
        curve: Curves.decelerate,
        child: Visibility(
          visible: dashboardController.showDrawer,
          child: Container(
            height: dashboardController.centro1Open
                ? context.height * 1.3
                : dashboardController.centro2Open
                    ? context.height * 1.4
                    : context.height * 0.91,
            width: context.width * 0.22,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.8),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(7),
                bottomRight: Radius.circular(7),
              ),
            ),
            child: SizedBox(
              height: context.height * 0.85,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Column(
                  children: [
                    DrawerListTile(
                      title: drawerItems[0].title,
                      svgSrc: drawerItems[0].svgSrc,
                      banner: banners[0],
                      press: () {
                        dashboardController.onOptionButtonTap(0);
                      },
                      color: dashboardController.selectedOptionIndex == 0
                          ? Colors.blue
                          : Colors.grey,
                      textColor: dashboardController.selectedOptionIndex == 0
                          ? Colors.blue
                          : Colors.white,
                      imageColor: dashboardController.selectedOptionIndex == 0
                          ? primaryColor
                          : Colors.white,
                    ),
                    DrawerListTile(
                      title: drawerItems[1].title,
                      svgSrc: drawerItems[1].svgSrc,
                      banner: banners[1],
                      press: () {
                        dashboardController.onOptionButtonTap(1);
                      },
                      color: dashboardController.selectedOptionIndex == 1
                          ? Colors.blue
                          : Colors.grey,
                      textColor: dashboardController.selectedOptionIndex == 1
                          ? Colors.blue
                          : Colors.white,
                      imageColor: dashboardController.selectedOptionIndex == 1
                          ? Colors.blue
                          : Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DrawerListTile(
                          title: drawerItems[2].title,
                          svgSrc: drawerItems[2].svgSrc,
                          banner: banners[2],
                          inRow: true,
                          press: () {
                            dashboardController.onOptionButtonTap(2);
                          },
                          color: dashboardController.selectedOptionIndex == 2
                              ? Colors.blue
                              : Colors.grey,
                          textColor:
                              dashboardController.selectedOptionIndex == 2
                                  ? Colors.blue
                                  : Colors.white,
                          imageColor:
                              dashboardController.selectedOptionIndex == 2
                                  ? Colors.blue
                                  : Colors.white,
                        ),
                        DrawerListTile(
                          title: drawerItems[3].title,
                          svgSrc: drawerItems[3].svgSrc,
                          banner: banners[3],
                          inRow: true,
                          press: () {
                            dashboardController.onOptionButtonTap(3);
                          },
                          color: dashboardController.selectedOptionIndex == 3
                              ? Colors.blue
                              : Colors.grey,
                          textColor:
                              dashboardController.selectedOptionIndex == 3
                                  ? Colors.blue
                                  : Colors.white,
                          imageColor:
                              dashboardController.selectedOptionIndex == 3
                                  ? Colors.blue
                                  : Colors.white,
                        ),
                      ],
                    ),
                    DrawerListTile(
                      suffixIconPress: () {
                        dashboardController.openCentro1();
                      },
                      detailsOpen: dashboardController.centro1Open,
                      title: 'drawerItems[4].title',
                      svgSrc: drawerItems[4].svgSrc,
                      banner: banners[4],
                      press: () {
                        dashboardController.onOptionButtonTap(4);
                      },
                      color: dashboardController.selectedOptionIndex == 4
                          ? Colors.blue
                          : Colors.grey,
                      textColor: dashboardController.selectedOptionIndex == 4
                          ? Colors.blue
                          : Colors.white,
                      imageColor: dashboardController.selectedOptionIndex == 4
                          ? Colors.blue
                          : Colors.white,
                    ),
                    AnimatedOpacity(
                      opacity: dashboardController.centro1Open ? 1.0 : 0.0,
                      duration: Duration(seconds: 5),
                      curve: Curves.slowMiddle,
                      child: Visibility(
                        visible: dashboardController.centro1Open,
                        child: Card(
                          color: primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: context.width * 0.09,
                                      child: DrawerListTile(
                                        title: drawerItems[5].title,
                                        svgSrc: drawerItems[5].svgSrc,
                                        banner: banners[5],
                                        press: () {
                                          // dashboardController.onOptionButtonTap(5);
                                        },
                                        color: dashboardController
                                                    .selectedOptionIndex ==
                                                5
                                            ? Colors.blue
                                            : Colors.grey,
                                        textColor: dashboardController
                                                    .selectedOptionIndex ==
                                                5
                                            ? Colors.blue
                                            : Colors.white,
                                        imageColor: dashboardController
                                                    .selectedOptionIndex ==
                                                5
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: context.width * 0.09,
                                      child: DrawerListTile(
                                        title: drawerItems[6].title,
                                        svgSrc: drawerItems[6].svgSrc,
                                        banner: banners[6],
                                        press: () {
                                          // dashboardController.onOptionButtonTap(6);
                                        },
                                        color: dashboardController
                                                    .selectedOptionIndex ==
                                                6
                                            ? Colors.blue
                                            : Colors.grey,
                                        textColor: dashboardController
                                                    .selectedOptionIndex ==
                                                6
                                            ? Colors.blue
                                            : Colors.white,
                                        imageColor: dashboardController
                                                    .selectedOptionIndex ==
                                                6
                                            ? Colors.blue
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                DrawerListTile(
                                  title: drawerItems[7].title,
                                  svgSrc: drawerItems[7].svgSrc,
                                  banner: banners[5],
                                  press: () {
                                    // dashboardController.onOptionButtonTap(7);
                                  },
                                  color:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.grey,
                                  textColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                  imageColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                ),
                                DrawerListTile(
                                  bannerText: 'NEVUO',
                                  title: drawerItems[8].title,
                                  svgSrc: drawerItems[8].svgSrc,
                                  banner: banners[5],
                                  press: () {
                                    // dashboardController.onOptionButtonTap(8);
                                  },
                                  color:
                                      dashboardController.selectedOptionIndex ==
                                              8
                                          ? Colors.blue
                                          : Colors.grey,
                                  textColor:
                                      dashboardController.selectedOptionIndex ==
                                              8
                                          ? Colors.blue
                                          : Colors.white,
                                  imageColor:
                                      dashboardController.selectedOptionIndex ==
                                              8
                                          ? Colors.blue
                                          : Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35.0),
                                  child: DrawerListTile(
                                    title: drawerItems[9].title,
                                    svgSrc: drawerItems[9].svgSrc,
                                    press: () {
                                      // dashboardController.onOptionButtonTap(9);
                                    },
                                    color: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.blue
                                        : Colors.grey,
                                    textColor: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.white
                                        : Colors.grey,
                                    imageColor: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    DrawerListTile(
                      suffixIconPress: () {
                        dashboardController.openCentro2();
                      },
                      detailsOpen: dashboardController.centro2Open,
                      title: drawerItems[10].title,
                      svgSrc: drawerItems[10].svgSrc,
                      banner: banners[4],
                      press: () {
                        dashboardController.onOptionButtonTap(10);
                      },
                      color: dashboardController.selectedOptionIndex == 10
                          ? Colors.blue
                          : Colors.grey,
                      textColor: dashboardController.selectedOptionIndex == 10
                          ? Colors.blue
                          : Colors.white,
                      imageColor: dashboardController.selectedOptionIndex == 10
                          ? Colors.blue
                          : Colors.white,
                    ),
                    AnimatedOpacity(
                      opacity: dashboardController.centro2Open ? 1.0 : 0.0,
                      duration: const Duration(seconds: 5),
                      curve: Curves.slowMiddle,
                      child: Visibility(
                        visible: dashboardController.centro2Open,
                        child: Card(
                          color: primaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                DrawerListTile(
                                  isAdvertiseButton: true,
                                  title: drawerItems[7].title,
                                  svgSrc: drawerItems[7].svgSrc,
                                  banner: banners[5],
                                  press: () {
                                    // dashboardController.onOptionButtonTap(7);
                                  },
                                  color:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.grey,
                                  textColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                  imageColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                ),
                                DrawerListTile(
                                  isAdvertiseButton: true,
                                  title: drawerItems[7].title,
                                  svgSrc: drawerItems[7].svgSrc,
                                  banner: banners[5],
                                  press: () {
                                    // dashboardController.onOptionButtonTap(7);
                                  },
                                  color:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.grey,
                                  textColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                  imageColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                ),
                                DrawerListTile(
                                  isAdvertiseButton: true,
                                  title: drawerItems[7].title,
                                  svgSrc: drawerItems[7].svgSrc,
                                  banner: banners[5],
                                  press: () {
                                    // dashboardController.onOptionButtonTap(7);
                                  },
                                  color:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.grey,
                                  textColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                  imageColor:
                                      dashboardController.selectedOptionIndex ==
                                              7
                                          ? Colors.blue
                                          : Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35.0),
                                  child: DrawerListTile(
                                    title: drawerItems[9].title,
                                    svgSrc: drawerItems[9].svgSrc,
                                    press: () {
                                      // dashboardController.onOptionButtonTap(9);
                                    },
                                    color: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.blue
                                        : Colors.grey,
                                    textColor: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.white
                                        : Colors.grey,
                                    imageColor: dashboardController
                                                .selectedOptionIndex ==
                                            9
                                        ? Colors.blue
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[11].title,
                        svgSrc: drawerItems[11].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(11);
                        },
                        color: dashboardController.selectedOptionIndex == 11
                            ? Colors.blue
                            : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 11
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 11
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[12].title,
                        svgSrc: drawerItems[12].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(12);
                        },
                        color: dashboardController.selectedOptionIndex == 12
                            ? Colors.blue
                            : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 12
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 12
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[13].title,
                        svgSrc: drawerItems[13].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(13);
                        },
                        color: dashboardController.selectedOptionIndex == 13
                            ? Colors.blue
                            : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 13
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 13
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[14].title,
                        svgSrc: drawerItems[14].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(14);
                        },
                        color: dashboardController.selectedOptionIndex == 14
                            ? Colors.blue
                            : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 14
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 14
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[15].title,
                        svgSrc: drawerItems[15].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(15);
                          Get.dialog(LiveChat());
                        },
                        backgroundColor:
                            dashboardController.selectedOptionIndex == 15
                                ? Colors.blue
                                : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 15
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 15
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),

                    //telegram button
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: DrawerListTile(
                        title: drawerItems[16].title,
                        svgSrc: drawerItems[16].svgSrc,
                        press: () {
                          dashboardController.onOptionButtonTap(16);
                        },
                        backgroundColor:
                            dashboardController.selectedOptionIndex == 16
                                ? Colors.blue
                                : Colors.transparent,
                        textColor: dashboardController.selectedOptionIndex == 16
                            ? Colors.white
                            : Colors.grey,
                        imageColor:
                            dashboardController.selectedOptionIndex == 16
                                ? Colors.blue
                                : Colors.white,
                      ),
                    ),


                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
