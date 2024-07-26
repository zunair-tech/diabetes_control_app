import '../controller/add_meal_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddMealOneScreen.
///
/// This class ensures that the AddMealOneController is created when the
/// AddMealOneScreen is first loaded.
class AddMealOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMealOneController());
  }
}
