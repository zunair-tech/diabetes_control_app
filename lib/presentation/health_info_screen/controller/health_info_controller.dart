import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/health_info_screen/models/health_info_model.dart';/// A controller class for the HealthInfoScreen.
///
/// This class manages the state of the HealthInfoScreen, including the
/// current healthInfoModelObj
class HealthInfoController extends GetxController {Rx<HealthInfoModel> healthInfoModelObj = HealthInfoModel().obs;

 }
