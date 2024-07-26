import '../controller/sugar_goals_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SugarGoalsScreen.
///
/// This class ensures that the SugarGoalsController is created when the
/// SugarGoalsScreen is first loaded.
class SugarGoalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SugarGoalsController());
  }
}
