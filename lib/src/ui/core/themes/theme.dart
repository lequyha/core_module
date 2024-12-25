import 'package:core_module/src/ui/core/themes/border_radius.dart';
import 'package:core_module/src/ui/core/themes/colors.dart';
import 'package:core_module/src/ui/core/themes/space.dart';
import 'package:flutter/material.dart';

extension AppTheme on TextTheme {
  TextStyle get kXXLRegular => const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.normal,
      );

  TextStyle get kBaseRegular => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      );

  TextStyle get kSmallRegular => const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
      );

  TextStyle get kXSmallMedium => const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get kSmallMedium => const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get kBaseMedium => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get kBaseSemibold => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      );

  TextStyle get kXSmallSemibold => const TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w600,
      );

  TextStyle get kSmallBold => const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
      );

  TextStyle get kBaseBold => const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
      );

  ButtonStyle get kPrimaryButtonStyle => ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: AppColors.kBtn1stDefaultBackgroundColor,
        padding: const EdgeInsets.symmetric(
          vertical: AppSpace.space12,
          horizontal: AppSpace.space24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(AppBorderRadius.kMediumBorderRadius),
        ),
      );

  ButtonStyle get kSecondaryButtonStyle => ElevatedButton.styleFrom(
        elevation: 0.0,
        padding: const EdgeInsets.symmetric(
          vertical: AppSpace.space4,
          horizontal: AppSpace.space8,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppBorderRadius.kXSBorderRadius),
        ),
      );
}
