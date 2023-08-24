import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';

import '../../../../core/constant/colors.dart';
import '../../../widgets/Circular_Icon.dart';
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
            width: 100,
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
      this.banner,
      this.suffixIconPress,
      this.backgroundColor,
      this.isAdvertiseButton=false,
      this.detailsOpen=false,
      this.bannerText='',
      this.inRow=false,
      this.textColor})
      : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  final Color? color;
  final Color? backgroundColor;
  final Color? imageColor;
  final Color? textColor;
  final String? banner;
  final String? bannerText;
  final bool inRow;
  final bool detailsOpen;
  final bool isAdvertiseButton;
  final VoidCallback? suffixIconPress;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
          // height: 50,
          width: inRow?context.width*0.1:Get.width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor?? Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: color?? Colors.transparent, // Set the border color
                  width: 1.0, // Set the border width
                ),
              ),
              child: banner!=null
                  ?SizedBox(
                child: Container(
                        height: isAdvertiseButton?context.height*0.1:context.height*0.06,
                        width: context.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: isAdvertiseButton?context.height*0.1:context.height*0.06,
                              width: context.width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0), // Same radius as the container
                                child: Image.asset(
                                  banner!, // Your image asset path
                                  width: context.height*0.06, // Match the container width
                                  height: context.width, // Match the container height
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            if(title!='')Positioned(
                                top: 0,
                                left: 0,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 5),
                                  child: Text(title,style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),),
                                )),

                            if(bannerText!='')Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10)), // Adjust the radius as needed
                                    color: Colors.red,
                                  ),
                                  child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 5),
                                  child: Text(bannerText!,style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),),
                                ),)),
                            if(suffixIconPress!=null)Positioned(
                                right: context.width*0.012,
                                bottom: context.height*0.017,
                                child: InkWell(
                                  onTap: suffixIconPress,
                                  child: CircularIcon(
                                    icon: detailsOpen?Icons.arrow_drop_down:Icons.chevron_right_rounded,
                                    iconSize: 20.0,
                                    iconColor: Colors.white,
                                    backgroundColor: Colors.blue,
                                  ),
                                ),),
                          ],
                        ),
                      ),
              )
                  :Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
                    child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Image.asset(
                      svgSrc,
                      height: 20,
                      width: 20,
                      color: textColor ?? Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        title,
                        style: TextStyle(color: textColor ?? Colors.grey,fontSize: 12),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
                  ),
            ),
          )),
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

List<String> banners=[
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
  'assets/images/imgRonaldo.png',
];

final List<DrawerItem> drawerItems = [
  DrawerItem(title: "BONUS VIP", svgSrc:  AppAssets.icVip),
  DrawerItem(
    title: "CASH BACK",
    svgSrc: AppAssets.icCashBack,
  ),
  DrawerItem(title: "RODA", svgSrc: AppAssets.icHome),
  DrawerItem(
    title: "Bonus Code",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "CENTRO\nDE JOGOS",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "DICE",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "MINES",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "CRASH",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "DOUBLE",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "TODOS OS JOGOS",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "CENTRO DE",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(title: "Home", svgSrc: AppAssets.icHome),
  DrawerItem(title: "SHARE", svgSrc: AppAssets.icShare),
  DrawerItem(
    title: "Privacy Policy",
    svgSrc: AppAssets.icPrivacyPolicy,
  ),
  DrawerItem(
    title: "Reference",
    svgSrc: AppAssets.icESport,
  ),
  DrawerItem(
    title: "Live Support",
    svgSrc: AppAssets.icESport,
  ),
  DrawerItem(
    title: "Telegram",
    svgSrc: AppAssets.icESport,
  ),
  DrawerItem(
    title: "ESPORT",
    svgSrc: AppAssets.icESport,
  ),
];
