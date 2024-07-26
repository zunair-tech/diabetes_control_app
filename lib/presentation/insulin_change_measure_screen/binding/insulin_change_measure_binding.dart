import '../controller/insulin_change_measure_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InsulinChangeMeasureScreen.
///
/// This class ensures that the InsulinChangeMeasureController is created when the
/// InsulinChangeMeasureScreen is first loaded.
class InsulinChangeMeasureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsulinChangeMeasureController());
  }
}
