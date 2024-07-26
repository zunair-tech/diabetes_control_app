import '../controller/insulin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InsulinScreen.
///
/// This class ensures that the InsulinController is created when the
/// InsulinScreen is first loaded.
class InsulinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsulinController());
  }
}
