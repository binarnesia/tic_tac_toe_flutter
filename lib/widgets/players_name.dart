import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class PlayersName extends StatelessWidget {
  const PlayersName({
    super.key,
    required this.playerOne,
    required this.playerTwo,
    required this.scoreX,
    required this.scoreO,
  });

  final String playerOne;
  final String playerTwo;
  final int scoreX;
  final int scoreO;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.horizontalMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '$playerOne\n $scoreX',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          AppSizes.gapW8,
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                '$playerTwo\n $scoreO',
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
