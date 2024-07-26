import 'package:diabetes_control_app/presentation/glucose_screen/controller/glucose_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TimeBaseContainer extends StatelessWidget {
  final bool isSelect;
  final String?  text;
  TimeBaseContainer(
     {
    Key? key, required this.isSelect, this.text,
  }) : super(
          key: key,
        );



  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlucoseController>(builder: (controller) {
      return Container(
        alignment: Alignment.center,
        margin: getMargin(right: 16),
        decoration: BoxDecoration(
          color: Color(0xFFF8F8F8),
          borderRadius: BorderRadius.circular(getHorizontalSize(12)),
          border: Border.all(
            color: isSelect?Color(0x8062B47F):Colors.transparent,
            width: getSize(1.5)
          )
        ),
        child: Padding(
          padding: getPadding(top: 10,bottom: 11,left: 16,right: 16),
          child: Text(text??'Before meal',style: TextStyle(
            color: isSelect?appTheme.greenA700:appTheme.black900,
            fontWeight: FontWeight.w400,
            fontSize: getFontSize(18)
          ),),
        ),
      );
    },init: GlucoseController(),);

  }
}
