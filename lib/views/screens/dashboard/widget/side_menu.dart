import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hllive/core/constant/assests_constant.dart';

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
            child:  Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
      {Key? key, this.title='',
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
      this.isDropDownMenuItem=false,
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
  final bool isDropDownMenuItem;
  final VoidCallback? suffixIconPress;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: SizedBox(
          // height: 50,
          width: isAdvertiseButton?200:inRow?110:241,
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
                        height: isAdvertiseButton?110:isDropDownMenuItem?57:inRow?55:67,
                        width: inRow?110:240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                          ),
                        child: Stack(
                          children: [
                            SizedBox(
                              height: isDropDownMenuItem?60:inRow?55:isAdvertiseButton?120:67,
                              width: inRow?110:isAdvertiseButton?200:240,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(7.0), // Same radius as the container
                                child: Image.asset(
                                  banner!, // Your image asset path
                                  width: inRow?110:isAdvertiseButton?200:240, // Match the container width
                                  height:isAdvertiseButton?130:isDropDownMenuItem?60:inRow?55:72, // Match the container height
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            if(title!='')Positioned(
                                top: 6,
                                left: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0,right: 5),
                                  child: Text(title,style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w900),),
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
                                bottom: context.height*0.02,
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
  final String? banner;

  DrawerItem({
    required this.title,
     this.banner,
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
  DrawerItem(title: "BONUS VIP", svgSrc:  AppAssets.icVip,banner: AppAssets.bonusVip),
  DrawerItem(
    title: "CASH BACK",
    svgSrc: AppAssets.icCashBack,
      banner: AppAssets.cashBack  ),
  DrawerItem(title: "RODA", svgSrc: AppAssets.icHome,banner: AppAssets.roda),
  DrawerItem(
    title: "Bonus Code",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.bonusCode
  ),
  DrawerItem(
    title: "CENTRO\nDE JOGOS",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.centerOfGames
  ),
  DrawerItem(
    title: "DICE",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.dice
  ),
  DrawerItem(
    title: "MINES",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.mines
  ),
  DrawerItem(
    title: "CRASH",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.banner3
  ),
  DrawerItem(
    title: "DOUBLE",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.double
  ),
  DrawerItem(
    title: "All games",
    svgSrc: AppAssets.icBonus,
  ),
  DrawerItem(
    title: "Center of the promotions",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.centerOfPromotion
  ),
  DrawerItem(
    title: "banner1",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.ban1
  ),
  DrawerItem(
    title: "banner2",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.ban2
  ),
  DrawerItem(
    title: "banner3",
    svgSrc: AppAssets.icBonus,
    banner: AppAssets.ban3
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
