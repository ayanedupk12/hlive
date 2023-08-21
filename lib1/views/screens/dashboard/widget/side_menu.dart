import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors.dart';
import '../dashboard_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});
  final DashboardController controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: context.height * 0.12,
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "LOGO",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Here",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.85,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    // Add the user accounts drawer header here
                    const SizedBox(
                      height: 20,
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: drawerItems.length,
                        itemBuilder: (context, index) {
                          final drawerItem = drawerItems[index];
                          return Obx(
                            () => Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: DrawerListTile(
                                title: drawerItem.title,
                                svgSrc: drawerItem.svgSrc,
                                press: () {
                                  controller.onOptionButtonTap(index);
                                },
                                color: controller.selectedOptionIndex.value ==
                                        index
                                    ? Colors.red
                                    : Colors.grey,
                                textColor:
                                    controller.selectedOptionIndex.value ==
                                            index
                                        ? Colors.black
                                        : Colors.white,
                                imageColor:
                                    controller.selectedOptionIndex.value ==
                                            index
                                        ? primaryColor
                                        : Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.symmetric(horizontal: 20),
                    //   child: ElevatedButtonWidget(
                    //     height: 50,
                    //     buttonColor: whiteColor,
                    //     buttonTextColor: primaryColor,
                    //     buttonText: 'Log Out',
                    //     onTap: () {
                    //       // Get.to(LoginScreen());
                    //     },
                    //   ),
                    // ),

                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {Key? key,
      required this.title,
      required this.svgSrc,
      required this.press,
      this.color,
      this.imageColor,
      this.textColor})
      : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final Color? color;
  final Color? imageColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
        child: SizedBox(
            // height: 50,
            width: Get.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: color ?? Colors.grey,
                  ),
                  Text(
                    title,
                    style: TextStyle(color: color ?? textColor ?? Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )),
      ),
    );
  }
}

class DrawerItem {
  final String title;
  final String svgSrc;

  DrawerItem({
    required this.title,
    required this.svgSrc,
  });
}

final List<DrawerItem> drawerItems = [
  DrawerItem(title: "Home", svgSrc: ""),
  DrawerItem(title: "VIP", svgSrc: ""),
  DrawerItem(title: "SHARE", svgSrc: ""),
  DrawerItem(
    title: "Cash Back",
    svgSrc: "",
  ),
  DrawerItem(
    title: "Bonus Code",
    svgSrc: "",
  ),
  DrawerItem(
    title: "Privacy Policy",
    svgSrc: "",
  ),
  DrawerItem(
    title: "ESPORT",
    svgSrc: "",
  ),
];
