import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';


class ProfileController extends GetxController {
  TextEditingController profileoneController = TextEditingController();

  TextEditingController profilethreeController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    profileoneController.dispose();
    profilethreeController.dispose();
  }
}
