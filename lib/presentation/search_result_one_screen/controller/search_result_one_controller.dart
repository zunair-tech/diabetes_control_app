import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/search_result_one_screen/models/search_result_one_model.dart';
import 'package:flutter/material.dart';


/// A controller class for the SearchResultOneScreen.
///
/// This class manages the state of the SearchResultOneScreen, including the
/// current searchResultOneModelObj
class SearchResultOneController extends GetxController {
  TextEditingController itemnameoneController = TextEditingController();

  Rx<SearchResultOneModel> searchResultOneModelObj = SearchResultOneModel().obs;

}
