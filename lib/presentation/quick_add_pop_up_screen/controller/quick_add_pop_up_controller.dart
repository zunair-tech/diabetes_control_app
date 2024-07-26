import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/quick_add_pop_up_screen/models/quick_add_pop_up_model.dart';/// A controller class for the QuickAddPopUpScreen.
///
/// This class manages the state of the QuickAddPopUpScreen, including the
/// current quickAddPopUpModelObj
class QuickAddPopUpController extends GetxController {Rx<QuickAddPopUpModel> quickAddPopUpModelObj = QuickAddPopUpModel().obs;

 }
