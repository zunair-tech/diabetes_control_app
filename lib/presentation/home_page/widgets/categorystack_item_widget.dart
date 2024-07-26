import '../controller/home_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  final String? icon;
  final String? categoriesName;
  final String? types;
  final String? number;
  final Color? iconBack;
  final Color? backColor;
  CategoriesItemWidget(
  {
    Key? key,
    this.onTapCategorystack, this.icon, this.categoriesName, this.number, this.types, this.iconBack, this.backColor,
  }) : super(
          key: key,
        );



  var controller = Get.find<HomeController>();

  VoidCallback? onTapCategorystack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCategorystack?.call();
      },
      child: Container(
        height: getSize(100),
        width: getSize(190),
        // margin: getMargin(top: 30),
        color: Colors.white,
        child: Stack(
          alignment: Alignment.topLeft,
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: getPadding(
                  left: 32,
                  top: 16,
                  right: 32,
                  bottom: 16,
                ),
                decoration: BoxDecoration(
                  color: backColor??appTheme.indigo50,
                  borderRadius: BorderRadius.circular(getHorizontalSize(12))
                ),
                child: Center(
                  child: Padding(
                    padding: getPadding(left: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(categoriesName??"Carbs",
                        style: theme.textTheme.titleLarge,
                      ),
                        SizedBox(
                          height: getSize(8),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: number??"lbl_522".tr,
                                style: CustomTextStyles
                                    .titleMediumBluegray900SemiBold,
                              ),
                              TextSpan(
                                text: types ??"lbl_calories".tr,
                                style: CustomTextStyles.titleMediumGray600,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),

                      ],
                    ),
                  ),
                )
                // child: Column(
                //   // mainAxisSize: MainAxisSize.min,
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Padding(
                //       padding: getPadding(
                //         top: 3,
                //       ),
                //       child: Obx(
                //         () => Text(
                //           categoriesName??"Carbs",
                //           style: theme.textTheme.titleLarge,
                //         ),
                //       ),
                //     ),
                //     Align(
                //       alignment: Alignment.centerRight,
                //       child: Padding(
                //         padding: getPadding(
                //           top: 8,
                //           right: 8
                //         ),
                //         child: RichText(
                //           text: TextSpan(
                //             children: [
                //               TextSpan(
                //                 text: number??"lbl_522".tr,
                //                 style: CustomTextStyles
                //                     .titleMediumBluegray900SemiBold,
                //               ),
                //               TextSpan(
                //                 text: types ??"lbl_calories".tr,
                //                 style: CustomTextStyles.titleMediumGray600,
                //               ),
                //             ],
                //           ),
                //           textAlign: TextAlign.left,
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ),
            Positioned(
               top: -10,
              child: CustomIconButton(
                height: 38,
                width: 38,
                margin: getMargin(
                  left: 16,

                ),
                padding: getPadding(
                  all: 8,
                ),
                // decoration: IconButtonStyleHelper.fillIndigoA,
                decoration: BoxDecoration(
                  color: iconBack??Color(0xFF4E4FDC),
                  borderRadius: BorderRadius.circular(getHorizontalSize(8))
                ),
                alignment: Alignment.topLeft,
                child: CustomImageView(
                  svgPath: icon??ImageConstant.imgApple1,color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
