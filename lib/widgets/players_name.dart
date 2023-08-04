import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class PlayersName extends StatelessWidget {
  const PlayersName({
    super.key,
    required this.playerOne,
    required this.playerTwo,
    required this.scoreX,
    required this.scoreO,
    required this.isXTurn,
  });

  final String playerOne;
  final String playerTwo;
  final int scoreX;
  final int scoreO;
  final String isXTurn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.horizontalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isXTurn == 'x'
              ? ActivePlayerName(playerName: playerOne, score: scoreX)
              : InactivePlayerName(playerName: playerOne, score: scoreX),
          AppSizes.gapW8,
          isXTurn == '0'
              ? ActivePlayerName(playerName: playerTwo, score: scoreO)
              : InactivePlayerName(playerName: playerTwo, score: scoreO)
        ],
      ),
    );
  }
}

class InactivePlayerName extends StatelessWidget {
  const InactivePlayerName({
    super.key,
    required this.playerName,
    required this.score,
  });

  final String playerName;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        child: Text(
          '$playerName\n $score',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class ActivePlayerName extends StatelessWidget {
  const ActivePlayerName({
    super.key,
    required this.playerName,
    required this.score,
  });

  final String playerName;
  final int score;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          '$playerName\n $score',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
