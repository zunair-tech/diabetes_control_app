import '../controller/target_glucose_range_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TargetGlucoseRangeScreen.
///
/// This class ensures that the TargetGlucoseRangeController is created when the
/// TargetGlucoseRangeScreen is first loaded.
class TargetGlucoseRangeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TargetGlucoseRangeController());
  }
}
