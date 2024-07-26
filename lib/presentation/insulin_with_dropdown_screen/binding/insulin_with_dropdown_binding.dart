import '../controller/insulin_with_dropdown_controller.dart';
import 'package:get/get.dart';

/// A binding class for the InsulinWithDropdownScreen.
///
/// This class ensures that the InsulinWithDropdownController is created when the
/// InsulinWithDropdownScreen is first loaded.
class InsulinWithDropdownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InsulinWithDropdownController());
  }
}
