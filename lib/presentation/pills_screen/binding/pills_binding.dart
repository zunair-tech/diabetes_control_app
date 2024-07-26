import '../controller/pills_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PillsScreen.
///
/// This class ensures that the PillsController is created when the
/// PillsScreen is first loaded.
class PillsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PillsController());
  }
}
