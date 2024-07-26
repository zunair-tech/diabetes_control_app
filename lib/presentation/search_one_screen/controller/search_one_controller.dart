import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/search_one_screen/models/search_one_model.dart';
import 'package:flutter/material.dart';

import '../../../data/list_data/app_listdata.dart';

/// A controller class for the SearchOneScreen.
///
/// This class manages the state of the SearchOneScreen, including the
/// current searchOneModelObj
class SearchOneController extends GetxController {
  TextEditingController searchoneController = TextEditingController();

  Rx<SearchOneModel> searchOneModelObj = SearchOneModel().obs;
  List<SearchOneModel> medList = [];

  filterMedicine(String query) {
    List<SearchOneModel> searchList = AppListData.medicineList
        .where((medicineList) => medicineList.medicineName!.toLowerCase().contains(query.toLowerCase()))
        .toList();
    medList = searchList;
    update();

  }


  @override
  void onClose() {
    super.onClose();
    searchoneController.dispose();
  }
}
