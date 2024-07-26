import '../controller/diabetes_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DiabetesTypeScreen.
///
/// This class ensures that the DiabetesTypeController is created when the
/// DiabetesTypeScreen is first loaded.
class DiabetesTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiabetesTypeController());
  }
}
