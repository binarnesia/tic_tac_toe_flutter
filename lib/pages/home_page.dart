import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/game_action_button.dart';
import 'package:tic_tac_toe_flutter/widgets/game_logo.dart';
import 'package:tic_tac_toe_flutter/widgets/players_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Image.asset(AppAssets.bg),
          SafeArea(
            child: Column(
              children: [
                const GameLogo(),
                AppSizes.gapH64,
                const PlayersName(),
                AppSizes.gapH32,

                Wrap(
                  spacing: AppSizes.p16,
                  runSpacing: AppSizes.p16,
                  children: [
                    for (int i = 0; i < 9; i++) const GameTile(),
                  ],
                ),
                AppSizes.gapH32,
                // Button
                const GameActionButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GameTile extends StatelessWidget {
  const GameTile({super.key, this.isCircle = false, this.isWining = false});

  final bool isCircle;
  final bool isWining;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.p18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.p4),
        color: isWining ? AppColors.secondaryColor : AppColors.white,
      ),
      child: SvgPicture.asset(
        isCircle ? AppAssets.circle : AppAssets.cross,
        width: (MediaQuery.of(context).size.width - 140) / 3,
        color: isCircle
            ? isWining
                ? AppColors.white
                : AppColors.secondaryColor
            : isWining
                ? AppColors.white
                : AppColors.primaryColor,
      ),
    );
  }
}
