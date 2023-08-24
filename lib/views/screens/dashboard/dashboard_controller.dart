import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/views/screens/dashboard/widget/ProfileDialogue.dart';

import '../../../core/constant/assests_constant.dart';
import '../../../core/constant/colors.dart';
import '../../widgets/button_widget.dart';
import '../BonusCode/BonusCode.dart';
import '../CashBack/CashBack.dart';
import '../LoginScreen/LoginScreen.dart';
import '../PrivacyPolicy/PrivacyPolicy.dart';
import '../SignUpScreen/SignUpScreen.dart';
import '../home/home.dart';
import '../share/share_screen.dart';
import '../vip/vip_screen.dart';

class DashboardController extends GetxController {
  int selectedOptionIndex = 0;
  bool showDrawer = true;
  bool centro1Open = false;
  bool centro2Open = true;
  onOffDrawer() {
    showDrawer = !showDrawer;
    update();
  }

  openCentro1() {
    centro2Open = false;
    centro1Open = !centro1Open;
    update();
  }

  openCentro2() {
    centro1Open = false;
    centro2Open = !centro2Open;
    update();
  }

  double dashBoardWidth = 0;
  dashboardWidth(dashWidth) {
    dashBoardWidth = dashWidth;
    pages = [
      VipScreen(
        width: dashBoardWidth,
      ),
      CashBackScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      //extra
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      BonusCodeScreen(
        width: dashBoardWidth,
      ),
      // BonusCodeScreen(width: dashBoardWidth,),
      // BonusCodeScreen(width: dashBoardWidth,),
      // BonusCodeScreen(width: dashBoardWidth,),
      HomeScreen(
        width: dashBoardWidth,
      ),
      //extra
      HomeScreen(
        width: dashBoardWidth,
      ),
      VipScreen(
        width: dashBoardWidth,
      ),
      ShareScreen(
        width: dashBoardWidth,
      ),
      // GameScreen(),
      PrivacyPolicyScreen(
        width: dashBoardWidth,
      ),
      PrivacyPolicyScreen(
        width: dashBoardWidth,
      ),
    ];
    // update();
  }

  List pages = [];

  homeScreenHeader(BuildContext context) {
    return Container(
        height: 83,
        width: context.width,
        decoration: const BoxDecoration(
          color: Color(0xff1F2A39),
        ),
        child: Center(
          child: ListTile(
            leading: InkWell(
              onTap: () {
                onOffDrawer();
              },
              child: Image.asset(
                'assets/images/menu_icon.png',
                height: 25.17,
                width: 48,
              ),
            ),
            trailing: SizedBox(
              width: context.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButtonWidget(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.all(context.height * 0.12),
                              child: const Card(
                                child: LoginScreen(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    width: 200,
                    height: 55,
                    buttonText: 'Login',
                    borderColor: Color(0xff2283F6),
                    buttonColor: Color(0xff2283F6),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  ElevatedButtonWidget(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: Container(
                              margin: EdgeInsets.all(context.height * 0.12),
                              child: const Card(
                                child: SignUpScreen(),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    width: 200,
                    height: 55,
                    buttonText: 'Create an account',
                    borderColor: Color(0xffC0102C),
                    buttonColor: Color(0xffC0102C),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  vipHeader() {
    return VipHeader();
  }

  void onOptionButtonTap(int index) {
    selectedOptionIndex = index;
    update();
    // pageController.jumpToPage(index); // Navigate to the relevant page
  }

  late PageController pageController = PageController();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  // Custom property to store the selected route name
  RxString selectedRoute = '/home'.obs;

  // Function to update the selected route name
  void setSelectedRoute(String routeName) {
    selectedRoute.value = routeName;
  }
}

class VipHeader extends StatelessWidget {
  VipHeader({
    super.key,
  });
  final dashBoardController = Get.find<DashboardController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.12,
      width: context.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: secondaryColor),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(
            15.0,
          ),
          child: IconButton(
              onPressed: () {
                dashBoardController.onOffDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 35,
              )),
        ),
        trailing: SizedBox(
          width: context.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
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
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "R\$10",
                        style: TextStyle(
                            color: whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
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
                              child: Image.asset(
                                AppAssets.imgDeposit,
                                fit: BoxFit.contain,
                              ),
                            ),
                            const Text(
                              "Deposit",
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
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
              InkWell(
                  onTap: () {
                    Get.dialog(ProfileDialogue());
                  },
                  child: Profile())
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.06,
      width: Get.width * 0.1,
      decoration: BoxDecoration(
          color: primaryColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            // Image.asset(AppAssets.imgProfile , height: 20,width: 20,),
            //use icon insted of profile picture
            Icon(
              Icons.person,
              color: whiteColor,
            ),

            SizedBox(
              width: 5,
            ),
            Text(
              'VIP 0',
              style: TextStyle(
                color: Color(0xffF4973F),
                fontSize: 12,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down_sharp,
                  color: whiteColor,
                ))
          ],
        ),
      ),
    );
  }
}
