import '../controller/diabetes_type_selected_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DiabetesTypeSelectedScreen.
///
/// This class ensures that the DiabetesTypeSelectedController is created when the
/// DiabetesTypeSelectedScreen is first loaded.
class DiabetesTypeSelectedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiabetesTypeSelectedController());
  }
}
