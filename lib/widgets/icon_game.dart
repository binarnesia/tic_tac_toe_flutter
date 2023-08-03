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
    this.isBorder = false,
  });
  const IconGame.circle({
    super.key,
    this.isCircle = true,
    this.size = AppSizes.p32,
    this.isBorder = false,
  });

  final bool isCircle;
  final double size;
  final bool isBorder;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.p8),
        color: AppColors.white,
        border: isBorder
            ? const Border(
                top: BorderSide(color: AppColors.primaryAccent, width: 2),
                right: BorderSide(color: AppColors.primaryAccent, width: 2),
                left: BorderSide(color: AppColors.primaryAccent, width: 2),
                bottom: BorderSide(color: AppColors.primaryAccent, width: 2),
              )
            : null,
      ),
      child: SvgPicture.asset(
        isCircle ? AppAssets.circle : AppAssets.cross,
        width: size,
        color: isCircle ? AppColors.secondaryColor : AppColors.primaryColor,
      ),
    );
  }
}
