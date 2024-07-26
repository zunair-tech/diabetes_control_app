import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/gender_screen/models/gender_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the GenderScreen.
///
/// This class manages the state of the GenderScreen, including the
/// current genderModelObj
class GenderController extends GetxController {
  Rx<GenderModel> genderModelObj = GenderModel().obs;

  RxInt sizeIndex = 0.obs;
  RxBool productPressed = false.obs;

  List<GenderModel> genderImg =[
   GenderModel(
       img: ImageConstant.img,
     text: 'Male',
     name: 'Male',

   ),
   GenderModel(
    img: ImageConstant.img72x60,
     text: 'Female',
     name: 'Female',
   ),
  ];

  select(int index){
   sizeIndex.value =index;
   productPressed.value = !productPressed.value;
   update();
   debugPrint('Color index --->${genderImg[index]}');
  }

  // onExit() {
  //  if (Platform.isIOS) {
  //   exit(0);
  //  } else {
  //   SystemNavigator.pop();
  //  }
  // }
}
