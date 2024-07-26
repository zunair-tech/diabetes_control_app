import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MealitemItemWidget extends StatelessWidget {
  final String? img;
  final String?  name;
  final String? quantity;
  MealitemItemWidget(
     {
    Key? key,
    this.onTapMealitem, this.img, this.name, this.quantity,
  }) : super(
          key: key,
        );

  VoidCallback? onTapMealitem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapMealitem?.call();
      },
      child: Container(
        width: double.maxFinite,
        padding: getPadding(
          left: 16,
          top: 16,
          right: 16,
          bottom: 14,
        ),
        decoration: AppDecoration.outlineGray200,
        child: Row(
          children: [
            CustomImageView(
              imagePath: img??ImageConstant.imgRectangle439248x48,
              height: getSize(48),
              width: getSize(48),
              radius: BorderRadius.circular(
                getHorizontalSize(8),
              ),

            ),
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 16,

                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        name??'Banana',
                        style: theme.textTheme.bodyLarge,
                      ),

                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                          quantity??'3.6 GL',
                          style: CustomTextStyles.bodyMediumSFProDisplay_1,
                        ),

                    ),
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
