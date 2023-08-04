import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/game_action_button.dart';
import 'package:tic_tac_toe_flutter/widgets/game_logo.dart';
import 'package:tic_tac_toe_flutter/widgets/game_tile.dart';
import 'package:tic_tac_toe_flutter/widgets/players_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> tileList = ['', '', '', '', '', '', '', '', ''];

String isXTurn = 'x';

class _HomePageState extends State<HomePage> {
  void changeTurn(int index) {
    setState(() {
      if (isXTurn == 'x' && tileList[index] == '') {
        tileList[index] = 'x';
        checkForTheWinner();
        isXTurn = '0';
      } else if (isXTurn == '0' && tileList[index] == '') {
        tileList[index] = '0';
        checkForTheWinner();
        isXTurn = 'x';
      }
    });
  }

  ///Check if there is a winner in every turn
  void checkForTheWinner() {
    List winingLines = [
      // Horizontal winning
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      // Vertical winning
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      // Diagonal winning
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (int i = 0; i < winingLines.length; i++) {
      final int a = winingLines[i][0];
      final int b = winingLines[i][1];
      final int c = winingLines[i][2];

      // final  (a, b, c) = winingLines[i];

      if (tileList[a] != '' &&
          tileList[b] != '' &&
          tileList[c] != '' &&
          tileList[a] == tileList[b] &&
          tileList[b] == tileList[c]) {
        print('winner $isXTurn');
      }
    }
  }

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
                      GameTile(
                        content: tileList[i],
                        isWining: false,
                        changeTurn: () => changeTurn(i),
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
