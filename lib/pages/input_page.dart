import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/game_logo.dart';
import 'package:tic_tac_toe_flutter/widgets/icon_game.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          Image.asset(AppAssets.bg),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.horizontalMargin,
              ),
              child: Column(
                children: [
                  AppSizes.gapH32,
                  const GameLogo(),
                  AppSizes.gapH32,
                  const TextField(
                    decoration: InputDecoration(
                      icon: IconGame(
                        size: AppSizes.p38,
                        isBorder: true,
                      ),
                      hintText: 'Enter player one’s Name',
                    ),
                  ),
                  AppSizes.gapH16,
                  const TextField(
                    decoration: InputDecoration(
                      icon: IconGame.circle(
                        size: AppSizes.p38,
                        isBorder: true,
                      ),
                      hintText: 'Enter player one’s Name',
                    ),
                  ),
                  AppSizes.gapH32,
                  // button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Start Game',
                        style: TextStyle(
                          fontFamily: 'NicoMoji',
                          fontSize: AppSizes.p18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
