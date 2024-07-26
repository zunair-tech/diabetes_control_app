import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeGray600_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeInterGray600 => theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeInterGray60018 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyLargeInterWhiteA700 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimary_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeRed700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red700,
      );
  static get bodyLargeSFProText => theme.textTheme.bodyLarge!.sFProText;
  static get bodyMediumSFProDisplay =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumSFProDisplayBluegray100 =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: appTheme.blueGray100,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumSFProDisplayPrimary =>
      theme.textTheme.bodyMedium!.sFProDisplay.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          13,
        ),
      );
  static get bodyMediumSFProDisplay_1 =>
      theme.textTheme.bodyMedium!.sFProDisplay;
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  // Display text style
  static get displaySmallBold => theme.textTheme.displaySmall!.copyWith(
        fontSize: getFontSize(
          34,
        ),
        fontWeight: FontWeight.w700,
      );
  static get displaySmallWhiteA700 => theme.textTheme.displaySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          34,
        ),
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOpenSans =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallOpenSansGray600 =>
      theme.textTheme.headlineSmall!.openSans.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLarge22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontSize: getFontSize(
          22,
        ),
      );
  static get titleLargeSFProText => theme.textTheme.titleLarge!.sFProText;
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBluegray900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900SemiBold16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray900SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray600_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get titleMediumInterBluegray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumSFProTextBluegray900 =>
      theme.textTheme.titleMedium!.sFProText.copyWith(
        color: appTheme.blueGray900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }
}
