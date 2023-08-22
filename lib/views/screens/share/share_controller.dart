

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShareScreenController extends GetxController with GetSingleTickerProviderStateMixin{

  late TabController tabController;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 3, vsync: this);
  }


}