import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class ThemeButton {
  static final elevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      textStyle: const TextStyle(
        fontFamily: 'NicoMoji',
        fontSize: AppSizes.p16,
      ),
      backgroundColor: AppColors.secondaryColor,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.p12,
        ),
      ),
      side: const BorderSide(
        color: AppColors.primaryAccent,
        width: AppSizes.p2,
      ),
    ),
  );
  static final textButton = TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      textStyle: const TextStyle(
        fontFamily: 'NicoMoji',
        fontSize: AppSizes.p16,
      ),
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          AppSizes.p12,
        ),
      ),
      side: const BorderSide(
        color: AppColors.primaryAccent,
        width: AppSizes.p2,
      ),
    ),
  );
}
