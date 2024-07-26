import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppBarText extends StatelessWidget {
  final bool backIcon;
  final String? text;
  final Widget? action;
    VoidCallback ?click;

   AppBarText({super.key,  this.backIcon = false, this.text, this.action,this.click,});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: getPadding(right: 16,left:16,bottom: 17,top: 16),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child:backIcon? GestureDetector(
              onTap: () {
                // ignore: unnecessary_statements
               click!();

              },
              child: CustomImageView(
                svgPath: ImageConstant.imgArrowleft ,
                height: getSize(24),
                width: getSize(24),
              ),
            ):SizedBox(),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              text??"Basic details".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: action,
          )
        ],
      ),
    );
  }
}
