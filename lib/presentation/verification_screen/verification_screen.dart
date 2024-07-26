import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';

import 'package:flutter/material.dart';

import 'package:pinput/pinput.dart';

import '../../core/utils/appbar_text.dart';
import 'controller/verification_controller.dart';

// ignore: must_be_immutable
class VerificationScreen extends GetWidget<VerificationController> {
   VerificationScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String otp= '000000';
  bool isOtp = false;



   final defaultPinTheme = PinTheme(


     width: getSize(50),
     height: getSize(50),
     textStyle:  TextStyle(
       fontSize: getFontSize(24),
       color: Color(0xFF7C7C7C),
       fontWeight: FontWeight.w400,
     ),

     decoration: BoxDecoration(
       border: Border.all(
         color:Colors.grey,
         width: getSize(1),
       ),
       borderRadius: BorderRadius.circular(getHorizontalSize(12)),
     ),
   );
   final errorPinTheme = PinTheme(
     width: getSize(50),
     height: getSize(50),
     textStyle:  TextStyle(
       fontSize: getFontSize(24),
       color: Colors.black,
       fontWeight: FontWeight.w400,
     ),

     decoration: BoxDecoration(
       border: Border.all(
         color:Colors.red,
         width: getSize(1),
       ),
       borderRadius: BorderRadius.circular(getHorizontalSize(12)),
     ),
   );
   final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 AppBarText(
                  text: 'Verification',
                  backIcon: true,
                   click: () {
                     Get.back();
                   },
                 ),
                 Divider(
                  color: Color(0xFFE7E7E7),
                  thickness: getSize(1.5),
                 ),

                 Padding(
                   padding: getPadding(top: 8),
                   child: Text("msg_please_provide_the".tr,
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.center,
                       style: theme.textTheme.bodyLarge),
                 ),
                 Padding(
                     padding: getPadding(top: 24),
                     child: RichText(
                         text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_code_sent_to".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "msg_ronaldrichards_gmail_com".tr,
                              style: CustomTextStyles
                                  .titleMediumBluegray900)
                         ]),
                         textAlign: TextAlign.left)),
                 Padding(
                     padding: getPadding(top: 24),
                     child: GetBuilder<VerificationController>(builder: (controller) {
                       return  Padding(
                         padding:  EdgeInsets.symmetric(horizontal: 16),
                         child: Pinput(
                           length: 6,
                           controller: pinController,
                           // senderPhoneNumber: "1262189112",
                           keyboardType: TextInputType.number,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            errorPinTheme: errorPinTheme,
                           errorTextStyle: TextStyle(
                             color: Colors.red
                           ),
                           defaultPinTheme:defaultPinTheme,

                           validator: (s) {
                             return s == '000000' ? null : 'Please enter a valid code';
                           },
                           pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                           showCursor: true,
                           onCompleted: (pin) {

                           },
                         ),
                       );
                     },init: VerificationController(),)

                 ),
                 Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16),
                  child: CustomElevatedButton(
                      text: "lbl_verify".tr,
                      margin: getMargin(top: 40),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL8.copyWith(
                          fixedSize: WidgetStateProperty.all<Size>(
                              Size(double.maxFinite, getVerticalSize(54)))),
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onTap: () {
                       if(_formKey.currentState!.validate()){
                         onTapVerify();
                         controller.otpController.value.clear();
                       }
                      }),
                 ),
                 Padding(
                     padding: getPadding(top: 24),
                     child: RichText(
                         text: TextSpan(children: [
                          TextSpan(
                              text: "msg_don_t_receive_a2".tr,
                              style: theme.textTheme.bodyLarge),
                          TextSpan(
                              text: "lbl_resend_now".tr,
                              style: TextStyle(
                                color: Color(0xFF62B47F),
                                fontSize: getFontSize(16),
                                fontWeight: FontWeight.w400,
                              ))
                         ]),
                         textAlign: TextAlign.left))
                ]
            ),
          )
        ));
  }


  onTapArrowleftone() {
    Get.back();
  }

   invalidOtp(){
    return Text('Invalid Code');
   }

  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPassswordScreen,
    );
  }
}


