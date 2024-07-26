import '../controller/profile_controller.dart';
import '../models/targetglucosera_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TargetglucoseraItemWidget extends StatelessWidget {
  TargetglucoseraItemWidget(
    this.targetglucoseraItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TargetglucoseraItemModel targetglucoseraItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 15,
        right: 16,
        bottom: 15,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            svgPath: ImageConstant.imgClock,
            height: getSize(22),
            width: getSize(22),
            margin: getMargin(
              top: 1,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 8,
              top: 3,
            ),
            child: Obx(
              () => Text(
                targetglucoseraItemModelObj.profileTxt.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            svgPath: ImageConstant.imgIcArrow,
            height: getSize(16),
            width: getSize(16),
            margin: getMargin(
              top: 3,
              right: 1,
              bottom: 3,
            ),
          ),
        ],
      ),
    );
  }
}
