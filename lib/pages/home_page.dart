import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/game_action_button.dart';
import 'package:tic_tac_toe_flutter/widgets/game_logo.dart';
import 'package:tic_tac_toe_flutter/widgets/game_tile.dart';
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
                AppSizes.gapH32,
                const GameLogo(),
                AppSizes.gapH64,
                const PlayersName(),
                AppSizes.gapH32,
                Wrap(
                  spacing: AppSizes.p16,
                  runSpacing: AppSizes.p16,
                  children: [
                    for (int i = 0; i < 9; i++)
                      const GameTile(
                        isCircle: true,
                        isWining: true,
                      ),
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
