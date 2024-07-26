import '../controller/glucose_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GlucoseScreen.
///
/// This class ensures that the GlucoseController is created when the
/// GlucoseScreen is first loaded.
class GlucoseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GlucoseController());
  }
}
