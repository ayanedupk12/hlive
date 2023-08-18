import 'package:flutter/material.dart';
import 'package:hllive/core/constant/colors.dart';

import '../../responsive.dart';
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
              padding: const EdgeInsets.all(28.0),
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
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: primaryColor),
                                    child: SizedBox(
                                      child: Text('1'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: Text('2'),
                            ),
                            SizedBox(
                              child: Text('3'),
                            ),
                            SizedBox(
                              child: Text('4'),
                            ),
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
