
import 'package:diabetes_control_app/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/theme_helper.dart';

class SelectCard extends StatelessWidget {
  final String? genderImg;
  final String? genderName;
  final  bool isSelect;
  const SelectCard({super.key, this.genderImg, required this.isSelect, this.genderName});

  @override
  Widget build(BuildContext context) {

    return  Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray50,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: isSelect?theme.colorScheme.primary:Color(0xFFF8F8F8),
                width: getHorizontalSize(2)),
            borderRadius:
            BorderRadiusStyle.roundedBorder20),
        child: Container(

            padding:getPadding(top: 36,bottom: 30,),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Padding(
                padding: getPadding(bottom: 7),
                child: Image.asset(
                   genderImg??ImageConstant.img,
                    height: getVerticalSize(60),
                    width: getHorizontalSize(60),
                    alignment: Alignment.center),
              ),
                  Align(
                     alignment: Alignment.center,
                      child: Text(genderName??'data',style: TextStyle(
                        color: appTheme.black900,
                        fontSize: getFontSize(28),
                        fontWeight: FontWeight.w400,
                      ),)),
            ]
            )

        )
    );
  }
}