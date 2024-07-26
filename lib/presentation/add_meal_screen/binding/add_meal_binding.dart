import '../controller/add_meal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddMealScreen.
///
/// This class ensures that the AddMealController is created when the
/// AddMealScreen is first loaded.
class AddMealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMealController());
  }
}
