import '../controller/measurement_unit_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MeasurementUnitTypeScreen.
///
/// This class ensures that the MeasurementUnitTypeController is created when the
/// MeasurementUnitTypeScreen is first loaded.
class MeasurementUnitTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MeasurementUnitTypeController());
  }
}
