import 'package:diabetes_control_app/core/app_export.dart';

class RecordController extends GetxController {
  Rx<DateTime>? selectedDateTxt = Rx(DateTime.now());
  Rx<String> dateTxt = Rx("");

  @override
  void onInit() {
    // TODO: implement onInit
    update();
    super.onInit();
  }
}
