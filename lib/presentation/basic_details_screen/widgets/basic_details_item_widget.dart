import '../controller/basic_details_controller.dart';
import '../models/basic_details_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BasicDetailsItemWidget extends StatelessWidget {
  BasicDetailsItemWidget(
    this.basicDetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BasicDetailsItemModel basicDetailsItemModelObj;

  var controller = Get.find<BasicDetailsController>();

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      width: getHorizontalSize(396),
      controller: basicDetailsItemModelObj.detailsoneController,
      hintText: "lbl_your_gender".tr,
      contentPadding: getPadding(
        left: 16,
        top: 20,
        right: 16,
        bottom: 20,
      ),
      borderDecoration: TextFormFieldStyleHelper.fillGray,
    );
  }
}
