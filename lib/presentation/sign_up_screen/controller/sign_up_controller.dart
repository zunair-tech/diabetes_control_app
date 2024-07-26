import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';


class SignUpController extends GetxController {
  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> scoreValue = false.obs;

  Rx<bool> isShowPassword = true.obs;
  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('1').obs;


}
