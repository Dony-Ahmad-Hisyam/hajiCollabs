import 'package:flutter/material.dart';
import 'package:haji/navigasi/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleLargeExtraBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Display text style
  static get displayMediumMontserrat =>
      theme.textTheme.displayMedium!.montserrat.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get displayMediumMontserratIndigo700 =>
      theme.textTheme.displayMedium!.montserrat.copyWith(
        color: appTheme.indigo700,
        fontWeight: FontWeight.w700,
      );
// Label text style
  static get labelLargeMontserrat =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeMontserratBluegray400 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get labelLargeMontserratBold =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeMontserratBold12 =>
      theme.textTheme.labelLarge!.montserrat.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMedium_1 => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );

  static get titleSmallIndigo700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo700,
      ); 

      static get labelLargeBlack => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );

      static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
}

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
