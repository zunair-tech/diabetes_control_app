import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/glucose_screen/models/glucose_model.dart';

/// A controller class for the GlucoseScreen.
///
/// This class manages the state of the GlucoseScreen, including the
/// current glucoseModelObj
class GlucoseController extends GetxController {
  Rx<GlucoseModel> glucoseModelObj = GlucoseModel().obs;
  bool tileExpanded = false;

  RxInt timeIndex = 0.obs;
  RxBool timePressed = false.obs;
}
