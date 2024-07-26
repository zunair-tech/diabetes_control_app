import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/logout_screen/models/logout_model.dart';/// A controller class for the LogoutScreen.
///
/// This class manages the state of the LogoutScreen, including the
/// current logoutModelObj
class LogoutController extends GetxController {Rx<LogoutModel> logoutModelObj = LogoutModel().obs;

 }
