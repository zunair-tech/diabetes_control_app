import '../models/chipviewbefore2_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipviewbefore2ItemWidget extends StatelessWidget {
  Chipviewbefore2ItemWidget(
    this.chipviewbefore2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewbefore2ItemModel chipviewbefore2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => RawChip(
        padding: getPadding(
          left: 16,
          top: 13,
          right: 16,
          bottom: 13,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chipviewbefore2ItemModelObj.beforemealTxt.value,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: getFontSize(
              18,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewbefore2ItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: chipviewbefore2ItemModelObj.isSelected.value
            ? RoundedRectangleBorder(
                side: BorderSide(
                  color: appTheme.blueGray900.withOpacity(0.6),
                  width: getHorizontalSize(1),
                ),
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(12),
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(12),
                ),
              ),
        onSelected: (value) {
          chipviewbefore2ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
