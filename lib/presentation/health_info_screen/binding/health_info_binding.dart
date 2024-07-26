import '../controller/health_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HealthInfoScreen.
///
/// This class ensures that the HealthInfoController is created when the
/// HealthInfoScreen is first loaded.
class HealthInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HealthInfoController());
  }
}
