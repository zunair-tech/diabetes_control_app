import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/insulin_screen/models/insulin_model.dart';
import 'package:flutter/cupertino.dart';


class InsulinController extends GetxController {
  Rx<InsulinModel> insulinModelObj = InsulinModel().obs;
  ValueNotifier tileExpanded = ValueNotifier(false);
  ValueNotifier type = ValueNotifier('mg/dl');

  RxInt timeIndex = 0.obs;
  RxBool timePressed = false.obs;
  int typeCount = 0;








}
