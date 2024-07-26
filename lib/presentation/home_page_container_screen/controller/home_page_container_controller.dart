import 'dart:io';

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/home_page_container_screen/models/home_page_container_model.dart';
import 'package:flutter/services.dart';

import '../../../data/store_data/pref_data.dart';

/// A controller class for the HomePageContainerScreen.
///
/// This class manages the state of the HomePageContainerScreen, including the
/// current homePageContainerModelObj
class HomePageContainerController extends GetxController {
  Rx<HomePageContainerModel> homePageContainerModelObj =
      HomePageContainerModel().obs;

  setIndex(int indexs) {
   PrefData.currentIndex =indexs;
   update();
  }

  onExit() {
   if (PrefData.currentIndex != 0) {
    PrefData.currentIndex = 0;
    update();
   } else {
    if (Platform.isIOS) {
     exit(0);
    } else {
     SystemNavigator.pop();
    }
   }
  }

  void onItemTapped(int index) {
   setIndex(index);
   print('Index====> ${PrefData.currentIndex}');
   update();
   //  bottomBarController.
  }
}
