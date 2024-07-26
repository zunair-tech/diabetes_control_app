
import 'package:diabetes_control_app/presentation/my_meal_page/controller/my_meal_controller.dart';
import 'package:get/get.dart';



class MyMealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyMealController());
  }
}
