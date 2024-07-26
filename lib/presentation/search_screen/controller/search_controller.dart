import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/search_screen/models/search_model.dart';
import 'package:flutter/material.dart';

import '../../../data/list_data/app_listdata.dart';
import '../../my_meal_page/models/my_meal_model.dart';

/// A controller class for the SearchScreen.
///
/// This class manages the state of the SearchScreen, including the
/// current searchModelObj
class SearchController extends GetxController {

  TextEditingController searchController = TextEditingController();

  Rx<SearchModel> searchModelObj = SearchModel().obs;

  List<MyMealModel> foodList = [];

  filterMeal(String query) {
    List<MyMealModel> searchList = AppListData.myMealList()
        .where((mealList) => mealList.name!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    foodList = searchList;
    update();

  }


}
