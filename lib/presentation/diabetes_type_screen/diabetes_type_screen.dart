import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/presentation/diabetes_type_screen/widget/select_radio_container.dart';
import 'package:flutter/material.dart';

import 'controller/diabetes_type_controller.dart';

// ignore: must_be_immutable
class DiabetesTypeScreen extends GetWidget<DiabetesTypeController> {
   DiabetesTypeScreen({Key? key}) : super(key: key);


  BasicDetailsController basicDetailsController =Get.put(BasicDetailsController());
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(

        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarText(
                 text: 'Step 2',
                ),
                Divider(
                 thickness: getSize(2),
                 color: appTheme.gray200,
                ),

                Padding(
                  padding: getPadding(top: 30,left: 16,bottom: 26),
                  child: Text("msg_what_diabetes_type".tr,
                      style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.start,),
                ),

               GetBuilder<DiabetesTypeController>(builder: (controller) {
                 return Expanded(
                   child: ListView(
                     children: [
                     SelectRadioContainer(
                       radioValue: 1,
                       radioType: 'Type 1',

                     ),
                     SelectRadioContainer(
                       radioValue: 2,
                       radioType: 'Type 2',
                     ),
                       SelectRadioContainer(
                         radioValue: 3,
                         radioType: 'Cystic fibrosis diabetes',
                       ),
                       SelectRadioContainer(
                         radioValue: 4,
                         radioType: 'LADA (1.5)',
                       ),
                       SelectRadioContainer(
                         radioValue: 5,
                         radioType: 'Prediabetes/ at risk for diabetes',
                       ),
                       SelectRadioContainer(
                         radioValue: 6,
                         radioType: 'Gestational',
                       ),
                       SelectRadioContainer(
                         radioValue: 7,
                         radioType: 'Steroid-induced diabetes',
                       ),
                       SelectRadioContainer(
                         radioValue: 8,
                         radioType: 'Monogenic diabetes',
                       ),
                     ],
                   ),
                 );
               },init: DiabetesTypeController(),)
              ]),
        ),


        bottomNavigationBar: GetBuilder<DiabetesTypeController>
          (builder: (controller) {
          // return CustomElevatedButton(
          //     text: "lbl_confirm".tr,
          //     margin: getMargin(left: 16, right: 16, bottom: 40),
          //     buttonStyle: controller.isSelect?CustomButtonStyles.fillPrimaryTL8:CustomButtonStyles.fillGray,
          //     buttonTextStyle:controller.isSelect?CustomTextStyles.bodyLargeInterWhiteA700: CustomTextStyles.titleMediumGray600_1,
          //     onTap: () {
          //      if(controller.isSelect){
          //        basicDetailsController.isDiabetesType =true;
          //        basicDetailsController.allSelectData();
          //        basicDetailsController.update();
          //        controller.update();
          //        Get.back();
          //      }
          //      else{}
          //     });
          return GestureDetector(
            onTap: () {
            if(controller.isSelect){
                   basicDetailsController.isDiabetesType =true;
                   basicDetailsController.allSelectData();
                   basicDetailsController.update();
                   controller.update();
                   Get.back();
                 }
              else{}
            },
            child: Container(
              height: getSize(54),
              margin: getMargin(left: 16,right: 16,bottom: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(

                color: controller.isSelect?Color(0xFF62B47F):Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(getHorizontalSize(12),

                )
              ),
              child: Padding(
                padding: getPadding(top: 13,bottom: 13),
                child: Text('Confirm',style: TextStyle(
                  color: controller.isSelect?Colors.white:Color(0xFF7C7C7C),
                  fontWeight: FontWeight.w700,
                  fontSize: getFontSize(18),
                ),),
              ),
            ),
          );
        },init: DiabetesTypeController(),)

    );
  }


  onTapConfirm() {
    Get.back();
  }
}
