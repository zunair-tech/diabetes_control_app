import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/core/utils/validation_functions.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/add_meal_controller.dart';

// ignore_for_file: must_be_immutable
class AddMealScreen extends GetWidget<AddMealController> {
  AddMealScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.whiteA700,
        body: Form(
            key: _formKey,
            child: SafeArea(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   AppBarText(
                     text: 'Add meal',
                     backIcon: true,
                     click: () => Get.back(),

                   ),
                    Divider(
                      thickness: getSize(1.5),
                      color: appTheme.gray90014,
                    ),
                    Padding(
                      padding:getPadding(top: 24,left: 16,right: 16,bottom: 24),
                      child: Text(
                          "msg_if_you_are_not_sure".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyLarge),
                    ),
                    Padding(
                      padding: getPadding(left: 16,right: 16),
                      child: CustomTextFormField(
                          controller: controller.dishNameController,
                          filled: true,
                          autofocus: false,
                          fillColor: Color(0xFFF8F8F8),
                          margin: getMargin(top: 24,left: 16,right: 16),
                          hintText: "lbl_enter_dish_name".tr,
                          hintStyle:
                              CustomTextStyles.bodyLargeGray600_1,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          contentPadding: getPadding(
                              left: 12,
                              top: 20,
                              right: 12,
                              bottom: 20),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillGray),
                    ),
                    Padding(
                      padding: getPadding(top: 16,bottom: 16,left: 16,right: 16),
                      child: CustomTextFormField(
                        textInputType: TextInputType.number,


                          controller: controller.glucoseController,
                          filled: true,
                          autofocus: false,
                          fillColor: Color(0xFFF8F8F8),
                          margin: getMargin(top: 16,left: 16,right: 16),
                          hintText: "Glucose index".tr,
                          hintStyle:
                              CustomTextStyles.bodyLargeGray600_1,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          suffix: Padding(
                            padding: getPadding(top: 5),
                            child: Text('GL',style:  CustomTextStyles.bodyLargeGray600_1,),
                          ),
                          suffixConstraints: BoxConstraints(
                              maxHeight: 24,
                              maxWidth: 24,
                              minHeight: 24,
                              minWidth: 24
                          ),
                          contentPadding: getPadding(
                              left: 16,
                              top: 17,
                              right: 16,
                              bottom: 18
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillGray),
                    ),
                    Padding(
                      padding: getPadding(left: 16,right: 16),
                      child: CustomTextFormField(

                        textInputType: TextInputType.number,
                          controller: controller.carbsController,
                          filled: true,
                          autofocus: false,
                          fillColor: Color(0xFFF8F8F8),
                          margin: getMargin(top: 16,left: 16,right: 16),
                          hintText: "Carbs index".tr,
                          hintStyle:
                              CustomTextStyles.bodyLargeGray600_1,
                          textInputAction: TextInputAction.done,


                          suffix: Padding(
                            padding: getPadding(right: 16,top: 5),
                            child: Text('G',style:  CustomTextStyles.bodyLargeGray600_1,),
                          ),
                          suffixConstraints: BoxConstraints(
                            maxHeight: 24,
                            maxWidth: 24,
                            minHeight: 24,
                            minWidth: 24
                          ),
                          validator: (value) {
                            if (!isText(value)) {
                              return "Please enter valid text";
                            }
                            return null;
                          },
                          contentPadding: getPadding(

                              top: 17,
                              right: 16,
                              left: 16,
                              bottom: 18
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillGray),
                    ),

                    GetBuilder<AddMealController>(builder: (controller) {
                      return GestureDetector(
                        onTap: () {
                          controller.isPhotosSelect = !controller.isPhotosSelect;
                          controller.update();
                        },
                        child: Container(
                          margin: getMargin(right: 16,top: 16,left: 16),
                          decoration: BoxDecoration(
                            color: Color(0xFFF8F8F8),
                            borderRadius: BorderRadius.circular(getHorizontalSize(12)),
                          ),
                          child: Padding(
                            padding: getPadding(left: 16,right: 16,top: 17,bottom: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text('Add dish Photos',style: TextStyle(
                                        color: controller.isPhotosSelect?appTheme.black900:Color(0xFF7C7C7C),
                                      ),),
                                    ),
                                    controller.isPhotosSelect?SizedBox():CustomImageView(
                                      svgPath: ImageConstant.imgCall,height: getSize(24),),
                                  ],
                                ),
                                controller.isPhotosSelect?Row(
                                 children: [
                                   Stack(

                                     children: [
                                       Container(
                                         margin: getMargin(top: 16),
                                         height:getSize(140),
                                         width: getSize(122),
                                         clipBehavior: Clip.antiAlias,
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(getHorizontalSize(12)),

                                         ),
                                         child: CustomImageView(
                                           imagePath: ImageConstant.mmLime,
                                         ),

                                       ),
                                       Align(
                                            alignment: Alignment.topRight,
                                           child: Padding(
                                             padding: getPadding(left: 90,top: 25),
                                             child: Icon(Icons.clear,size: getSize(20),color: Colors.white,),
                                           )),
                                     ],
                                   ),
                                   Stack(

                                     children: [
                                       Container(
                                         margin: getMargin(top: 16,left: 16),
                                         height:getSize(140),
                                         width: getSize(122),
                                         clipBehavior: Clip.antiAlias,
                                         decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(getHorizontalSize(12)),

                                         ),
                                         child: CustomImageView(
                                           imagePath: ImageConstant.mmLime,
                                         ),

                                       ),
                                       Align(
                                            alignment: Alignment.topRight,
                                           child: Padding(
                                             padding: getPadding(left: 90,top: 25),
                                             child: Icon(Icons.clear,size: getSize(20),color: Colors.white,),
                                           )),
                                     ],
                                   ),
                                 ],
                                ):SizedBox(
                                  height: getSize(0),
                                  width: getSize(0),
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    },init: AddMealController(),),
                  ]),
            )),
        bottomNavigationBar: GetBuilder<AddMealController>(builder: (controller) {

          return GestureDetector(
            onTap: () {
              if(controller.isPhotosSelect){
                onTapArrowleftone();
              }
              else{
              }
            },
            child: Container(
              alignment: Alignment.center,
              margin: getMargin(left: 16,right: 16,bottom: 40),
              height: getSize(54),
              width: double.infinity,
              decoration: BoxDecoration(
                color: controller.isPhotosSelect?Color(0xFF62B47F):Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(getHorizontalSize(12))
              ),
              child: Text('Save',style: TextStyle(
                color: controller.isPhotosSelect?Colors.white:Color(0xFf7C7C7C),
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w700,
              ),),
            ),
          );
          },init: AddMealController(),)
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}
