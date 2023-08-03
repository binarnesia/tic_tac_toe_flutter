import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class IconGame extends StatelessWidget {
  const IconGame({
    super.key,
    this.isCircle = false,
    this.size = AppSizes.p32,
  });
  const IconGame.circle({
    super.key,
    this.isCircle = true,
    this.size = AppSizes.p32,
  });

  final bool isCircle;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.p4),
        color: AppColors.white,
      ),
      child: SvgPicture.asset(
        isCircle ? AppAssets.circle : AppAssets.cross,
        width: size,
        color: isCircle ? AppColors.secondaryColor : AppColors.primaryColor,
      ),
    );
  }
}
