import 'dart:io';

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/models/basic_details_model.dart';
import 'package:flutter/services.dart';


class BasicDetailsController extends GetxController {
  Rx<BasicDetailsModel> basicDetailsModelObj = BasicDetailsModel().obs;

  String gender = '';
  bool isGender = false;
  String weight = '';
  String age = '';
  String diabetesType = '';
  bool isDiabetesType = false;
  String therapy = '';
  bool isTherapy = false;
  String measurementUnit = '';
  bool isMeasurementUnit = false;
  String sugar = '';
  bool isSugar = false;
  String glucose = '';
  bool isGlucose = false;

  bool allSelect =false;

  allSelectData(){
    if(isGender && isDiabetesType && isTherapy &&isMeasurementUnit&&isSugar&&isGlucose){
      allSelect=true;
      update();
    }
    else{
      allSelect=false;
      update();
    }
  }

  onExit() {
    if (Platform.isIOS) {
      exit(0);
    } else {
      SystemNavigator.pop();
    }
  }


  @override
  void onInit() {
    // TODO: implement onInit
    update();
    // allSelectData();
    print('Is Gender ===> $isGender');
    print('Is dia ===> $isDiabetesType');
    print('Is therepy ===> $isTherapy');
    print('Is me ===> $isMeasurementUnit');
    print('Is Gender ===> $isSugar');
    print('Is Gender ===> $isGlucose');
    // print('Is Gender ===> $isGender');
    super.onInit();
  }

}
