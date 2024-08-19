import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelHomeController extends GetxController
    with GetTickerProviderStateMixin {
  late TabController tabController;

  @override
  void onInit() {
    tabController = TabController(length: 3, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
