import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/target_glucose_range_screen/models/target_glucose_range_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TargetGlucoseRangeScreen.
///
/// This class manages the state of the TargetGlucoseRangeScreen, including the
/// current targetGlucoseRangeModelObj
class TargetGlucoseRangeController extends GetxController {
  TextEditingController mgdlCounterController = TextEditingController();

  TextEditingController mgdlCounterController1 = TextEditingController();

  TextEditingController mgdlCounterController2 = TextEditingController();

  TextEditingController mgdlCounterController3 = TextEditingController();

  Rx<TargetGlucoseRangeModel> targetGlucoseRangeModelObj =
      TargetGlucoseRangeModel().obs;


  bool isCon1 = false;
  bool isCon2 = false;
  bool isCon3 = false;
  bool isCon4 = false;
  bool allSelect =true;

  allSelectData(){
   if(isCon1 && isCon2 && isCon3 &&isCon4){
    allSelect=true;
    update();
   }
   else{
    allSelect=false;
    update();
   }
  }
  // isTextEnter(){
  //   if(mgdlCounterController.text.isNotEmpty && mgdlCounterController1.text.isNotEmpty&&mgdlCounterController2.text.isNotEmpty&&mgdlCounterController3.text.isNotEmpty){
  //     allSelect =true;
  //     update();
  //   }
  // }

  @override
  void onClose() {
    super.onClose();
    mgdlCounterController.dispose();
    mgdlCounterController1.dispose();
    mgdlCounterController2.dispose();
    mgdlCounterController3.dispose();


  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    update();
    }
  }

