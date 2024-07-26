import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/base_button.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends BaseButton {

  CustomElevatedButton({
    Key? key,
    this.decoration,
    this.leftIcon,
    this.rightIcon,
    EdgeInsets? margin,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    Alignment? alignment,
    ButtonStyle? disabledButtonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    double? height,
    double? width,
    required String text,
  }) : super(
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          disabledButtonStyle: disabledButtonStyle,
          buttonTextStyle: buttonTextStyle,
          height: height,
          width: width,
          alignment: alignment,
          margin: margin,
        );

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;


  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: buildElevatedButtonWidget,
          )
        : buildElevatedButtonWidget;
  }

  ButtonStyle? get elevatedButtonStyle =>
      (isDisabled ?? false) ? disabledButtonStyle : buttonStyle;
  Widget get buildElevatedButtonWidget => Container(
        height: this.height ?? getVerticalSize(54),
        width: this.width ?? double.maxFinite,
        margin: margin,

        child: GestureDetector(

          onTap: onTap ?? () {},
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF62B47F),
              borderRadius: BorderRadius.circular(getHorizontalSize(12))
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                leftIcon ?? const SizedBox.shrink(),
                Text(
                  text,
                  style: buttonTextStyle ?? theme.textTheme.titleMedium,
                ),
                rightIcon ?? const SizedBox.shrink(),
              ],
            ),
          ),
        ),
      );
}
