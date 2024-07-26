import '../models/chipviewbefore4_item_model.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipviewbefore4ItemWidget extends StatelessWidget {Chipviewbefore4ItemWidget(
    this.chipviewbefore4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Chipviewbefore4ItemModel chipviewbefore4ItemModelObj;

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
          chipviewbefore4ItemModelObj.beforemealTxt.value,
          style: TextStyle(
            color: appTheme.blueGray900,
            fontSize: getFontSize(
              18,
            ),
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: chipviewbefore4ItemModelObj.isSelected.value,
        backgroundColor: appTheme.gray50,
        selectedColor: appTheme.gray50,
        shape: chipviewbefore4ItemModelObj.isSelected.value
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
          chipviewbefore4ItemModelObj.isSelected.value = value;
        },
      ),
    );
  }
}
