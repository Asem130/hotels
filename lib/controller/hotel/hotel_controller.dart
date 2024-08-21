import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';

abstract class HotelHomeController extends GetxController {
  goToResturantView();
}

class HotelHomeControllerImp extends HotelHomeController
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

  @override
  goToResturantView() {
    Get.toNamed(Routes.resturanHomeView);
  }
}
