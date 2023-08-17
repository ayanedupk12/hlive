import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/colors.dart';
import '../../../widgets/button_widget.dart';
import '../dashboard_controller.dart';

class SideMenu extends StatelessWidget {
  SideMenu({super.key});
  final DashboardController controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: Column(
        children: [
          // Add the user accounts drawer header here
          SizedBox(
            height: 20,
          ),
          // CircleAvatar(
          //   radius: 60, // Use responsive_sizer for radius
          // //  backgroundImage:AssetImage(AppAssets.imgProfile),
          //   child: Image.asset(AppAssets.imgProfile),
          // ),
          Container(
            height: 100,
            width: 100,
            decoration:
                BoxDecoration(color: whiteColor, shape: BoxShape.circle),
            child: Center(
              child: Text("LOGO"),
            ),
          ),
          SizedBox(
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
                      color: controller.selectedOptionIndex.value == index
                          ? Colors.white
                          : primaryColor,
                      textColor: controller.selectedOptionIndex.value == index
                          ? Colors.black
                          : Colors.white,
                      imageColor: controller.selectedOptionIndex.value == index
                          ? primaryColor
                          : Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          const Spacer(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButtonWidget(
              height: 50,
              buttonColor: whiteColor,
              buttonTextColor: primaryColor,
              buttonText: 'Log Out',
              onTap: () {
                // Get.to(LoginScreen());
              },
            ),
          ),

          SizedBox(
            height: 20,
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
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Container(
          height: 50,
          width: Get.width,
          decoration: BoxDecoration(
              color: color ?? primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(6),
                topLeft: Radius.circular(6),
              ) // Change the background color

              ),
          child: ListTile(
            horizontalTitleGap: 0.0,
            // leading: SvgPicture.asset(
            //   svgSrc,
            //   color: imageColor ?? Colors.white,
            //   //colorFilter: ColorFilter.mode(imageColor ?? Colors.white, BlendMode.srcIn),
            //   height: 16,
            // ),
            title: Text(
              title,
              style: TextStyle(color: textColor ?? Colors.white),
            ),
          ),
        ),
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
  DrawerItem(title: "Dashboard", svgSrc: ""),
  DrawerItem(title: "Orders", svgSrc: ""),
  DrawerItem(title: "Menu", svgSrc: ""),
  DrawerItem(
    title: "Waiters",
    svgSrc: "",
  ),
  DrawerItem(
    title: "Chef",
    svgSrc: "",
  ),
];
