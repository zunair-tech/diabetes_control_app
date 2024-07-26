import '../controller/basic_details_one_controller.dart';
import '../models/userdetails_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserdetailsItemWidget extends StatelessWidget {
  UserdetailsItemWidget(
    this.userdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserdetailsItemModel userdetailsItemModelObj;

  var controller = Get.find<BasicDetailsOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 19,
        right: 16,
        bottom: 19,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Obx(
              () => Text(
                userdetailsItemModelObj.userGenderTxt.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Obx(
            () => Text(
              userdetailsItemModelObj.userDateTxt.value,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
