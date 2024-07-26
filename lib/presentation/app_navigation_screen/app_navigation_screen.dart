import 'controller/app_navigation_controller.dart';import 'package:diabetes_control_app/core/app_export.dart';import 'package:flutter/material.dart';class AppNavigationScreen extends GetWidget<AppNavigationController> {const AppNavigationScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: SizedBox(width: getHorizontalSize(375), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_app_navigation".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20), child: Text("msg_check_your_app_s".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.blueGray400, fontSize: getFontSize(16), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.black900))])), Expanded(child: SingleChildScrollView(child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapSplash();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_splash".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSplashOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_splash_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBasicdetails();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_basic_details".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapGender();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_gender".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDiabetestype();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_diabetes_type".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDiabetestypeselected();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_diabetes_type_selected".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTherapytype();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_therapy_type".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapMeasurementunittype();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_measurement_unit".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSugargoals();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sugar_goals".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapGlucoselevel();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_glucose_level".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapBasicdetailsOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_basic_details_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapDetailsuploadsuccess();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_details_upload_success".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLogin();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_log_in".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLoginwitherror();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_log_in_with_error".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSignup();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_sign_up".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapForgotpassword();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_forgot_password".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapVerification();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_verification2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapVerificationwitherror();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_verification_with".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapResetpasssword();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_reset_passsword".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapResetpassswordsuccess();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_reset_passsword".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHomepageContainer();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_home_page_container".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapQuickaddpopup();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_quick_add_pop_up".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapGlucose();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_glucose".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPills();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_pills".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSearchOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_search_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSearchresult();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_search_result".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPillsmednameselected();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_pills_med_name_selected".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInsulin();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_insulin3".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInsulinwithdropdown();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_insulin_with_dropdown".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapInsulinchangemeasure();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_insulin_change".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSearch();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_search".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapSearchresultOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_search_result_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAddmeal();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_add_meal".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapAddmealOne();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_add_meal_one".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapProductdetails();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_product_details".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapProductdetailstips();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_product_details".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapProfiledetails();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_profile_details".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapEditProfile();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_edit_profile2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapHealthinfo();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_health_info".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapTargetGlucoserange();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("msg_target_glucose_range".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapPrivacypolicy();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_privacy_policy2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))]))), GestureDetector(onTap: () {onTapLogout();}, child: Container(decoration: AppDecoration.white, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 20, top: 10, right: 20, bottom: 10), child: Text("lbl_logout2".tr, textAlign: TextAlign.center, style: TextStyle(color: appTheme.black900, fontSize: getFontSize(20), fontFamily: 'Roboto', fontWeight: FontWeight.w400)))), Padding(padding: getPadding(top: 5), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray400))])))]))))])))); } 
/// Navigates to the splashScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the splashScreen.
onTapSplash() { Get.toNamed(AppRoutes.splashScreen, ); } 
/// Navigates to the splashOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the splashOneScreen.
onTapSplashOne() { Get.toNamed(AppRoutes.splashOneScreen, ); } 
/// Navigates to the basicDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the basicDetailsScreen.
onTapBasicdetails() { Get.toNamed(AppRoutes.basicDetailsScreen, ); } 
/// Navigates to the genderScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the genderScreen.
onTapGender() { Get.toNamed(AppRoutes.genderScreen, ); } 
/// Navigates to the diabetesTypeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the diabetesTypeScreen.
onTapDiabetestype() { Get.toNamed(AppRoutes.diabetesTypeScreen, ); } 
/// Navigates to the diabetesTypeSelectedScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the diabetesTypeSelectedScreen.
onTapDiabetestypeselected() { Get.toNamed(AppRoutes.diabetesTypeSelectedScreen, ); } 
/// Navigates to the therapyTypeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the therapyTypeScreen.
onTapTherapytype() { Get.toNamed(AppRoutes.therapyTypeScreen, ); } 
/// Navigates to the measurementUnitTypeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the measurementUnitTypeScreen.
onTapMeasurementunittype() { Get.toNamed(AppRoutes.measurementUnitTypeScreen, ); } 
/// Navigates to the sugarGoalsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the sugarGoalsScreen.
onTapSugargoals() { Get.toNamed(AppRoutes.sugarGoalsScreen, ); } 
/// Navigates to the glucoseLevelScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the glucoseLevelScreen.
onTapGlucoselevel() { Get.toNamed(AppRoutes.glucoseLevelScreen, ); } 
/// Navigates to the basicDetailsOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the basicDetailsOneScreen.
onTapBasicdetailsOne() { Get.toNamed(AppRoutes.basicDetailsOneScreen, ); } 
/// Navigates to the detailsUploadSuccessScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the detailsUploadSuccessScreen.
onTapDetailsuploadsuccess() { Get.toNamed(AppRoutes.detailsUploadSuccessScreen, ); } 
/// Navigates to the logInScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the logInScreen.
onTapLogin() { Get.toNamed(AppRoutes.logInScreen, ); } 
/// Navigates to the logInWithErrorScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the logInWithErrorScreen.
onTapLoginwitherror() { Get.toNamed(AppRoutes.logInWithErrorScreen, ); } 
/// Navigates to the signUpScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the signUpScreen.
onTapSignup() { Get.toNamed(AppRoutes.signUpScreen, ); } 
/// Navigates to the forgotPasswordScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the forgotPasswordScreen.
onTapForgotpassword() { Get.toNamed(AppRoutes.forgotPasswordScreen, ); } 
/// Navigates to the verificationScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the verificationScreen.
onTapVerification() { Get.toNamed(AppRoutes.verificationScreen, ); } 
/// Navigates to the verificationWithErrorScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the verificationWithErrorScreen.
onTapVerificationwitherror() { Get.toNamed(AppRoutes.verificationWithErrorScreen, ); } 
/// Navigates to the resetPassswordScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the resetPassswordScreen.
onTapResetpasssword() { Get.toNamed(AppRoutes.resetPassswordScreen, ); } 
/// Navigates to the resetPassswordSuccessScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the resetPassswordSuccessScreen.
onTapResetpassswordsuccess() { Get.toNamed(AppRoutes.resetPassswordSuccessScreen, ); } 
/// Navigates to the homePageContainerScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the homePageContainerScreen.
onTapHomepageContainer() { Get.toNamed(AppRoutes.homePageContainerScreen, ); } 
/// Navigates to the quickAddPopUpScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the quickAddPopUpScreen.
onTapQuickaddpopup() { Get.toNamed(AppRoutes.quickAddPopUpScreen, ); } 
/// Navigates to the glucoseScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the glucoseScreen.
onTapGlucose() { Get.toNamed(AppRoutes.glucoseScreen, ); } 
/// Navigates to the pillsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pillsScreen.
onTapPills() { Get.toNamed(AppRoutes.pillsScreen, ); } 
/// Navigates to the searchOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the searchOneScreen.
onTapSearchOne() { Get.toNamed(AppRoutes.searchOneScreen, ); } 
/// Navigates to the searchResultScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the searchResultScreen.
onTapSearchresult() { Get.toNamed(AppRoutes.searchResultScreen, ); } 
/// Navigates to the pillsMedNameSelectedScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the pillsMedNameSelectedScreen.
onTapPillsmednameselected() { Get.toNamed(AppRoutes.pillsMedNameSelectedScreen, ); } 
/// Navigates to the insulinScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the insulinScreen.
onTapInsulin() { Get.toNamed(AppRoutes.insulinScreen, ); } 
/// Navigates to the insulinWithDropdownScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the insulinWithDropdownScreen.
onTapInsulinwithdropdown() { Get.toNamed(AppRoutes.insulinWithDropdownScreen, ); } 
/// Navigates to the insulinChangeMeasureScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the insulinChangeMeasureScreen.
onTapInsulinchangemeasure() { Get.toNamed(AppRoutes.insulinChangeMeasureScreen, ); } 
/// Navigates to the searchScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the searchScreen.
onTapSearch() { Get.toNamed(AppRoutes.searchScreen, ); } 
/// Navigates to the searchResultOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the searchResultOneScreen.
onTapSearchresultOne() { Get.toNamed(AppRoutes.searchResultOneScreen, ); } 
/// Navigates to the addMealScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the addMealScreen.
onTapAddmeal() { Get.toNamed(AppRoutes.addMealScreen, ); } 
/// Navigates to the addMealOneScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the addMealOneScreen.
onTapAddmealOne() { Get.toNamed(AppRoutes.addMealOneScreen, ); } 
/// Navigates to the productDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the productDetailsScreen.
onTapProductdetails() { Get.toNamed(AppRoutes.productDetailsScreen, ); } 
/// Navigates to the productDetailsTipsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the productDetailsTipsScreen.
onTapProductdetailstips() { Get.toNamed(AppRoutes.productDetailsTipsScreen, ); } 
/// Navigates to the profileDetailsScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the profileDetailsScreen.
onTapProfiledetails() { Get.toNamed(AppRoutes.profileDetailsScreen, ); } 
/// Navigates to the editProfileScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the editProfileScreen.
onTapEditProfile() { Get.toNamed(AppRoutes.editProfileScreen, ); } 
/// Navigates to the healthInfoScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the healthInfoScreen.
onTapHealthinfo() { Get.toNamed(AppRoutes.healthInfoScreen, ); } 
/// Navigates to the targetGlucoseRangeScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the targetGlucoseRangeScreen.
onTapTargetGlucoserange() { Get.toNamed(AppRoutes.targetGlucoseRangeScreen, ); } 
/// Navigates to the privacyPolicyScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the privacyPolicyScreen.
onTapPrivacypolicy() { Get.toNamed(AppRoutes.privacyPolicyScreen, ); } 
/// Navigates to the logoutScreen when the action is triggered.

/// When the action is triggered, this function uses the `Get` package to
/// push the named route for the logoutScreen.
onTapLogout() { Get.toNamed(AppRoutes.logoutScreen, ); } 
 }
