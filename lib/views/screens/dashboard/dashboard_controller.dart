



 import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends  GetxController{

  var  selectedOptionIndex = 0.obs;

  void onOptionButtonTap(int index) {
     selectedOptionIndex.value = index;
    pageController.jumpToPage(index); // Navigate to the relevant page
  }
  late  PageController pageController = PageController();

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