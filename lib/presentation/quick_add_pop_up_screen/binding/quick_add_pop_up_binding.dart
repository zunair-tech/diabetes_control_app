import '../controller/quick_add_pop_up_controller.dart';
import 'package:get/get.dart';

/// A binding class for the QuickAddPopUpScreen.
///
/// This class ensures that the QuickAddPopUpController is created when the
/// QuickAddPopUpScreen is first loaded.
class QuickAddPopUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => QuickAddPopUpController());
  }
}
