import '../controller/basic_details_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BasicDetailsOneScreen.
///
/// This class ensures that the BasicDetailsOneController is created when the
/// BasicDetailsOneScreen is first loaded.
class BasicDetailsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BasicDetailsOneController());
  }
}
