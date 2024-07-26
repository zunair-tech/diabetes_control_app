import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';


class BottomSheetList extends StatelessWidget {
  const BottomSheetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(32)),topRight: Radius.circular(getHorizontalSize(32)))
      ),
      child: Padding(
        padding: getPadding(left: 16,right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: getMargin(top: 15,bottom: 16),
              height: getSize(5),
              width: getSize(70),
              decoration: BoxDecoration(
                color: Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(getHorizontalSize(20)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.glucoseScreen);
              },
              child: Row(
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgSGlucose,color: Color(0xFFD75A58),
                  ),
                  SizedBox(
                    width: getSize(20),
                  ),
                  Expanded(
                    child: Text('Glucose',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: getFontSize(18)
                    ),),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.insulinScreen);
              },
              child: Padding(
                padding:getPadding(top: 44,bottom: 44),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSInsulin,color: Color(0xFF2A8BB5),
                    ),
                    SizedBox(
                      width: getSize(20),
                    ),
                    Expanded(
                      child: Text('Insulin',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: getFontSize(18)
                      ),),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.back();
                Get.toNamed(AppRoutes.pillsScreen);
              },
              child: Padding(
                padding: getPadding(bottom: 22),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgSPill,color: Color(0xFF5F619D),
                    ),
                    SizedBox(
                      width: getSize(20),
                    ),
                    Expanded(
                      child: Text('Pills',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: getFontSize(18)
                      ),),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
