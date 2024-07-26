import '../controller/log_in_with_error_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LogInWithErrorScreen.
///
/// This class ensures that the LogInWithErrorController is created when the
/// LogInWithErrorScreen is first loaded.
class LogInWithErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogInWithErrorController());
  }
}
