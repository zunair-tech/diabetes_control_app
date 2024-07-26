import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/widgets/select_data_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/utils/appbar_text.dart';
import 'controller/basic_details_controller.dart';

class BasicDetailsScreen extends GetWidget<BasicDetailsController> {
  const BasicDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return controller.onExit();
      },
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,

          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisSize: MainAxisSize.min,
                children: [

                AppBarText(text: 'Basic details',backIcon: false),
                  Divider(
                    color: appTheme.gray200,
                    thickness: getSize(2),
                  ),
                  Padding(
                      padding: getPadding(top: 25,left: 16),
                      child: Text(
                          "msg_tell_us_about_yourself".tr,
                          style: theme
                              .textTheme.headlineSmall)),
                  Padding(
                    padding:getPadding(top: 8,left: 16,right: 16),
                    child: Text(
                        "msg_your_individual".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodyLarge),
                  ),

                 Expanded(
                   child: Padding(
                     padding:getPadding(top: 30),
                     child: GetBuilder<BasicDetailsController>(builder: (controller) {
                       return ListView(
                         children: [
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.genderScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your gender',
                               showData: controller.gender.isEmpty?SizedBox():Text(controller.gender,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {

                             },
                             child: SelectDataContainer(
                               text: 'Your weight',
                               showData:Text('Select weight',style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {

                             },
                             child: SelectDataContainer(
                               text: 'Your age',
                               showData:Text('Select',style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.diabetesTypeScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your diabetes type',
                               showData: controller.diabetesType.isEmpty?SizedBox():Text(controller.diabetesType,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.therapyTypeScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your therapy',
                               showData: controller.therapy.isEmpty?SizedBox():Text(controller.therapy,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.measurementUnitTypeScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your measurement unit',
                               showData: controller.measurementUnit.isEmpty?SizedBox():Text(controller.measurementUnit,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.sugarGoalsScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your sugar goal',
                               showData: controller.sugar.isEmpty?SizedBox():Text(controller.sugar,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),
                           GestureDetector(
                             onTap: () {
                               Get.toNamed(
                                 AppRoutes.glucoseLevelScreen,
                               );
                             },
                             child: SelectDataContainer(
                               text: 'Your glucose level',
                               showData: controller.glucose.isEmpty?SizedBox():Text(controller.glucose,style: TextStyle(
                                 color: appTheme.black900,
                                 fontWeight: FontWeight.w400,
                                 fontSize: getFontSize(16),
                               ),),
                             ),
                           ),

                         ],
                       );

                     },init: BasicDetailsController(),)
                 ),
                 ),
                ]),
          ),
          bottomNavigationBar: GetBuilder<BasicDetailsController>(builder: (controller) {
            return controller.allSelect?
            GestureDetector(
              onTap:() {
                print('Is Gender ===> ${controller.isGender}');
                print('Is dia ===> ${controller.isDiabetesType}');
                print('Is therepy ===> ${controller.isTherapy}');
                print('Is me ===> ${controller.isMeasurementUnit}');
                print('Is Sugar ===> ${controller.isSugar}');
                print('Is Glucose ===> ${controller.isGlucose}');
                onTapConfirmdetails();
              } ,
              child: Padding(
                padding: getPadding(bottom: 40,left: 16,right: 16),
                child: Container(
                  height: getSize(54),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFF62B47F),
                    borderRadius: BorderRadius.circular(getHorizontalSize(12))
                  ),
                  child: Padding(
                    padding: getPadding(top: 13,bottom: 13),
                    child: Text('Confirm',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: getFontSize(18)
                    ),),
                  ),
                ),
              ),
            ):
            Padding(
              padding: getPadding(bottom: 40,left: 16,right: 16),
              child: Container(
                height: getSize(54),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7),
                    borderRadius: BorderRadius.circular(getHorizontalSize(12))
                ),
                child: Padding(
                  padding: getPadding(top: 13,bottom: 13),
                  child: Text('Confirm',style: TextStyle(
                      color: Color(0xFF7C7C7C),
                      fontWeight: FontWeight.w700,
                      fontSize: getFontSize(18)
                  ),),
                ),
              ),
            );
          },init: BasicDetailsController(),)
      ),
    );
  }


  onTapConfirmdetails() {
    Get.toNamed(
      AppRoutes.detailsUploadSuccessScreen,
    );
  }




  static  getAppBar({
    SystemUiOverlayStyle? systemUiOverlayStyle,
    String? text,
    Color?color,
    double?toolbarHeight,
    List<Widget>?action,
    void Function()? onTap,
    bool leadingIcon=false,
  }){
    return  AppBar(
      title: Text(
        text!,
        style: TextStyle(
          fontSize: getFontSize(28),
          color: appTheme.black900,
          fontWeight: FontWeight.w700,
          // fontSize: 22.sp,
          // fontWeight:FontWeight.w700,

        ),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),

      actions: action,
      leading: leadingIcon?Center(
        child: GestureDetector(
          onTap: () {
            onTap!();
            // CommonPop.popScreen(context, RoutesPath.loginScreen);
          },
          // child: Image.asset(
          //   // AppImages.backArrow,height: 24.h,width: 24.h,
          // ),
        ),
      ):const SizedBox(),
      centerTitle: true,

      toolbarHeight: toolbarHeight??40,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: color??Colors.transparent,
    );
  }
}
