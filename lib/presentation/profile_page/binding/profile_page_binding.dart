import 'package:diabetes_control_app/presentation/profile_page/controller/profile_controller.dart';
import 'package:get/get.dart';



class ProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }
}
