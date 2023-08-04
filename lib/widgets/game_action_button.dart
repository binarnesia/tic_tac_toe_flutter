import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/pages/input_page.dart';

class GameActionButton extends StatelessWidget {
  const GameActionButton({
    super.key,
    this.resetBoard,
  });
  final Function()? resetBoard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.horizontalMargin),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: resetBoard,
              child: const Text('Reset Game'),
            ),
          ),
          AppSizes.gapW8,
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.danger,
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InputPage(),
                    ),
                    (route) => false);
              },
              child: const Text('Restart'),
            ),
          ),
        ],
      ),
    );
  }
}
