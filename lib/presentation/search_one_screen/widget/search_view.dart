import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/pills_screen/controller/pills_controller.dart';
import 'package:flutter/material.dart';
import '../controller/search_one_controller.dart';

// ignore: must_be_immutable
class SearchView extends StatelessWidget {
   SearchView({super.key});

  PillsController pillsController = Get.put(PillsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchOneController>(builder: (controller) {
      return controller.searchoneController.text.isEmpty?
      Column(
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
                    top: 2,
                    bottom: 1,
                  ),
                  child: Text(
                    "lbl_metformin".tr,
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
                    top: 3,
                  ),
                  child: Text(
                    "lbl_glipizide".tr,
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
                    top: 3,
                  ),
                  child: Text(
                    "lbl_glimepiride".tr,
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
                    "lbl_invokana".tr,
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
                    "lbl_jardiance".tr,
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
      ):
      Expanded(
        child: ListView.builder(
          itemCount: controller.medList.length,
          itemBuilder: (context, index) {
            return  GestureDetector(
              onTap: () {
                pillsController.medicineName = controller.medList[index].medicineName!;
                pillsController.update();
                controller.update();
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
                          imagePath: ImageConstant.imgMed,
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
                              Text(controller.medList[index].medicineName!,style: TextStyle(
                                color: Color(0xFF333333),
                                fontSize: getFontSize(16),
                                fontWeight: FontWeight.w400,
                              ),),
                              Padding(
                                padding:getPadding(top: 8),
                                child: Text(controller.medList[index].medicineCount!,style: TextStyle(
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
    },init: SearchOneController(),);
  }
}
