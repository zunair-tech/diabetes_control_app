import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/edit_profile_screen/models/edit_profile_model.dart';import 'package:flutter/material.dart';/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
 TextEditingController fullNameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;


 }
