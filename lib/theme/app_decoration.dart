import 'package:flutter/material.dart';
import 'package:diabetes_control_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black900.withOpacity(0.4),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple400.withOpacity(0.39),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: Color(0xFFF8F8F8),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.08),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.16),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.white,
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray200 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray200,
            width: getHorizontalSize(1),
          ),
        ),
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        border: Border.all(
          color: appTheme.gray600,
          width: getHorizontalSize(1),
        ),
      );
  static BoxDecoration get outlineGray90014 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90014,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: appTheme.gray50,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: getHorizontalSize(2),
        ),
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder28 => BorderRadius.circular(
        getHorizontalSize(28),
      );
  static BorderRadius get circleBorder52 => BorderRadius.circular(
        getHorizontalSize(52),
      );

  // Custom borders
  static BorderRadius get customBorderTL32 => BorderRadius.vertical(
        top: Radius.circular(
          getHorizontalSize(32),
        ),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        getHorizontalSize(12),
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        getHorizontalSize(16),
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        getHorizontalSize(3),
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        getHorizontalSize(8),
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    