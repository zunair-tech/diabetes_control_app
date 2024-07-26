import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/insulin_with_dropdown_screen/models/insulin_with_dropdown_model.dart';/// A controller class for the InsulinWithDropdownScreen.
///
/// This class manages the state of the InsulinWithDropdownScreen, including the
/// current insulinWithDropdownModelObj
class InsulinWithDropdownController extends GetxController {Rx<InsulinWithDropdownModel> insulinWithDropdownModelObj = InsulinWithDropdownModel().obs;

 }
