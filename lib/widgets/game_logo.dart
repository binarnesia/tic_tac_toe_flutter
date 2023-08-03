import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/icon_game.dart';

class GameLogo extends StatelessWidget {
  const GameLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconGame(),
            AppSizes.gapW4,
            IconGame.circle(),
          ],
        ),
        Text(
          'Tic-Tac-Toe',
          style: TextStyle(
            fontFamily: 'NicoMoji',
            fontSize: AppSizes.p24,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
