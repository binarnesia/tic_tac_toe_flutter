import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class GameTile extends StatelessWidget {
  const GameTile({super.key, this.isCircle = false, this.isWining = false});

  final bool isCircle;
  final bool isWining;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(AppSizes.p24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.p4),
          color: isWining ? AppColors.secondaryColor : AppColors.white,
        ),
        child: SvgPicture.asset(
          isCircle ? AppAssets.circle : AppAssets.cross,
          width: (MediaQuery.of(context).size.width - 200) / 3,
          color: isCircle
              ? isWining
                  ? AppColors.white
                  : AppColors.secondaryColor
              : isWining
                  ? AppColors.white
                  : AppColors.primaryColor,
        ),
      ),
    );
  }
}
