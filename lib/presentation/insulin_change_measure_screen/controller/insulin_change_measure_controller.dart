import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/insulin_change_measure_screen/models/insulin_change_measure_model.dart';/// A controller class for the InsulinChangeMeasureScreen.
///
/// This class manages the state of the InsulinChangeMeasureScreen, including the
/// current insulinChangeMeasureModelObj
class InsulinChangeMeasureController extends GetxController {Rx<InsulinChangeMeasureModel> insulinChangeMeasureModelObj = InsulinChangeMeasureModel().obs;

 }
