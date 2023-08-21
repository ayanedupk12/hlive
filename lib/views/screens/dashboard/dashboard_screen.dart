import 'package:flutter/material.dart';
import 'package:hllive/core/constant/colors.dart';
import 'package:hllive/views/screens/game/game_screen.dart';

import '../../responsive.dart';
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
          return Scaffold(
            backgroundColor: primaryColor.withOpacity(0.8),
            key: dashboardController.scaffoldKey,
            drawer: Padding(
              padding: const EdgeInsets.all(18.0),
              child: SideMenu(),
            ),
            body: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (Responsive.isDesktop(context))
                    Expanded(
                      child: SideMenu(),
                    ),
                  Expanded(
                    flex: 5,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Check if the screen size is large enough to show the SideMenu
                        if (Responsive.isDesktop(context)) {
                          // Set initialPage to the selectedOptionIndex for large screens
                          dashboardController.pageController = PageController(
                            initialPage:
                                dashboardController.selectedOptionIndex.value,
                          );
                        } else {
                          // For small screens, always set the initialPage to 0 (HomeScreen)
                          dashboardController.pageController = PageController(
                              initialPage: dashboardController
                                  .selectedOptionIndex.value);
                        }

                        return PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: dashboardController.pageController,
                          children: const [
                            HomeScreen(),
                            VipScreen(),
                            GameScreen(),
                            PlayGameScreen(),
                            SizedBox(
                              child: Text('5'),
                            ),
                          ],
                          onPageChanged: (index) {
                            dashboardController.selectedOptionIndex.value =
                                index;
                          },
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
          );
        });
  }
}
