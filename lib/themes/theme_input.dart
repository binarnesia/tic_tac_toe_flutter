import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeInput {
  static InputDecorationTheme style = InputDecorationTheme(
    fillColor: AppColors.white,
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
    hintStyle: GoogleFonts.quantico(
      color: AppColors.primaryAccent,
      fontSize: AppSizes.p16,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.p8),
      borderSide: const BorderSide(
        color: AppColors.primaryColor,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.p8),
      borderSide: const BorderSide(
        color: AppColors.primaryAccent,
        width: AppSizes.p2,
      ),
    ),
  );
}
