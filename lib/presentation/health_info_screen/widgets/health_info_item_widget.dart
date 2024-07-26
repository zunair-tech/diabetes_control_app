import '../controller/health_info_controller.dart';
import '../models/health_info_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthInfoItemWidget extends StatelessWidget {
  HealthInfoItemWidget(
    this.healthInfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthInfoItemModel healthInfoItemModelObj;

  var controller = Get.find<HealthInfoController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(359),
      child: Obx(
        () => Text(
          healthInfoItemModelObj.yourindividualTxt.value,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }
}
