import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/data/list_data/app_listdata.dart';import 'package:diabetes_control_app/presentation/my_meal_page/models/my_meal_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyMealPage.
///
/// This class manages the state of the MyMealPage, including the
/// current myMealModelObj
class MyMealController extends GetxController {

TextEditingController searchoneController = TextEditingController();

MyMealModel? currentMeal ;
List<MyMealModel> getMeal = AppListData.myMealList();
   passData(data){
    currentMeal = data;
    update();
   }

   @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    update();
  }

  void setCurrentData(MyMealModel data) {
    currentMeal = data;
    update();
  }

 }
