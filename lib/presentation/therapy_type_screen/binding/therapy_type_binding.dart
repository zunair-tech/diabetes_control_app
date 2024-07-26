import '../controller/therapy_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TherapyTypeScreen.
///
/// This class ensures that the TherapyTypeController is created when the
/// TherapyTypeScreen is first loaded.
class TherapyTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TherapyTypeController());
  }
}
