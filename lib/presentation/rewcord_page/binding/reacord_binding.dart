
import 'package:diabetes_control_app/presentation/rewcord_page/controller/rewcord_controller.dart';
import 'package:get/get.dart';



class RecordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecordController());
  }
}
