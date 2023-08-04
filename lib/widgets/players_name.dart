import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class PlayersName extends StatelessWidget {
  const PlayersName({
    super.key,
    required this.playerOne,
    required this.playerTwo,
  });

  final String playerOne;
  final String playerTwo;
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
                '$playerOne \n 2',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          AppSizes.gapW8,
          Expanded(
            child: TextButton(
              onPressed: () {},
              child: Text(
                '$playerTwo\n 3',
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
