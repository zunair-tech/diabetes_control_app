import '../controller/glucose_level_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GlucoseLevelScreen.
///
/// This class ensures that the GlucoseLevelController is created when the
/// GlucoseLevelScreen is first loaded.
class GlucoseLevelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GlucoseLevelController());
  }
}
