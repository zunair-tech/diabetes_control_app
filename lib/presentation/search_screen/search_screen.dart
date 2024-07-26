import 'controller/search_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore_for_file: must_be_immutable
class SearchScreen extends GetWidget<SearchController> {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           GetBuilder<SearchController>(builder: (controller) {
             return  Padding(
               padding: getPadding(left: 16,right: 16,top: 24),
               child: TextField(
                 autofocus: true,
                 onChanged: (value) {
                   controller.filterMeal(value);
                   controller.update();
                 },
                 style: TextStyle(
                   color: Colors.black,
                   fontSize: getSize(16),
                   fontWeight: FontWeight.w400,
                 ),
                 // enabled:enabled??true ,
                 controller:controller.searchController,
                 textInputAction:TextInputAction.search,
                 textAlign: TextAlign.start,
                 textAlignVertical: TextAlignVertical.center,
                 keyboardType:TextInputType.name,
                 decoration: InputDecoration(
                   hintText:'Enter a dish or product',
                   hintStyle:  TextStyle(
                     fontSize: getSize(16),
                     fontWeight: FontWeight.w400,
                     color: Color(0xFF7C7C7C),
                   ),
                   border: OutlineInputBorder(
                       borderRadius:BorderRadius.circular(12),
                       borderSide:  BorderSide(
                           color:Colors.transparent
                       )

                   ),
                   focusedBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide:  BorderSide(
                           color:Colors.transparent
                       )
                   ),
                   errorBorder: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: const BorderSide(
                           color: Colors.transparent
                       )
                   ),
                   enabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide:  BorderSide(
                           color:Colors.transparent
                       )
                   ) ,
                   disabledBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide:  BorderSide(
                           color: Colors.transparent
                       )
                   ) ,
                   filled: true,
                   contentPadding:  EdgeInsets.all(12),
                   fillColor:Color(0xD7C7C7C),

                   prefixIcon: Padding(
                     padding:getPadding(all: 14),
                     child: CustomImageView(
                       svgPath:ImageConstant.imgSearch,
                       height: getSize(24),
                       width: getSize(24),
                       color: appTheme.black900,

                     ),
                   ),
                   suffix: controller.searchController.text.isEmpty?SizedBox():SizedBox(),
                 ),
               ),
             );
           },init: SearchController(),),
          GetBuilder<SearchController>(builder: (controller) {
            return  controller.searchController.text.isEmpty?Padding(
              padding: getPadding(left: 16,right: 16),
              child: Column(
                children: [
                  Padding(
                    padding: getPadding(
                      top: 18,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_recent".tr,
                          style: CustomTextStyles.titleMediumBluegray900SemiBold_1,
                        ),
                        Text(
                          "lbl_clear_all".tr,
                          style: CustomTextStyles.bodyLargePrimary,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "lbl_banana_fresh".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCloseBlueGray900,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_bread".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCloseBlueGray900,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_lime_soda".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCloseBlueGray900,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_green_tea".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCloseBlueGray900,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_rice".tr,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgCloseBlueGray900,
                          height: getSize(24),
                          width: getSize(24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ):Expanded(
              child: ListView.builder(
                itemCount: controller.foodList.length,
                padding: getPadding(top: 16),
                itemBuilder:(context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      // height: getSize(100),
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFFE7E7E7),
                                  width: getSize(1.5)
                              )
                          )


                      ),
                      child: Padding(
                        padding: getPadding(all: 16),
                        child: Row(
                          children: [
                            Container(
                              clipBehavior:Clip.antiAlias,
                              height: getSize(48),
                              width: getSize(48),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(getHorizontalSize(8))
                              ),
                              child: CustomImageView(
                                imagePath: controller.foodList[index].img,
                                fit: BoxFit.cover,

                              ),
                            ),
                            Expanded(
                              child: Padding(

                                padding:getPadding(left: 16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(controller.foodList[index].name!,style: TextStyle(
                                      color: Color(0xFF333333),
                                      fontSize: getFontSize(16),
                                      fontWeight: FontWeight.w400,
                                    ),),
                                    Padding(
                                      padding:getPadding(top: 8),
                                      child: Text(controller.foodList[index].quantity!,style: TextStyle(
                                        color: Color(0xFF7C7C7C),
                                        fontSize: getFontSize(14),
                                        fontWeight: FontWeight.w400,
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },init: SearchController(),)
          ],
        ),
      ),
    );
  }
}
