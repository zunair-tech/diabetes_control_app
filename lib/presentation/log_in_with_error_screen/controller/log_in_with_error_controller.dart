import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/log_in_with_error_screen/models/log_in_with_error_model.dart';import 'package:flutter/material.dart';/// A controller class for the LogInWithErrorScreen.
///
/// This class manages the state of the LogInWithErrorScreen, including the
/// current logInWithErrorModelObj
class LogInWithErrorController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LogInWithErrorModel> logInWithErrorModelObj = LogInWithErrorModel().obs;

@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
