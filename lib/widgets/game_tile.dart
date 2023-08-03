import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class GameTile extends StatelessWidget {
  const GameTile({super.key, this.isWining = false, required this.content});

  final bool isWining;
  final String content;

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
        child: content == ''
            ? const TileBlank()
            : content == '0'
                ? TileCircle(isWining: isWining)
                : TileCross(isWining: isWining),
      ),
    );
  }
}

class TileBlank extends StatelessWidget {
  const TileBlank({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 200) / 3,
      height: (MediaQuery.of(context).size.width - 200) / 3,
    );
  }
}

class TileCircle extends StatelessWidget {
  const TileCircle({super.key, required this.isWining});

  final bool isWining;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SvgPicture.asset(
        AppAssets.circle,
        color: isWining ? AppColors.white : AppColors.secondaryColor,
      ),
    );
  }
}

class TileCross extends StatelessWidget {
  const TileCross({super.key, required this.isWining});
  final bool isWining;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppAssets.cross,
      color: isWining ? AppColors.white : AppColors.primaryColor,
    );
  }
}
