import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class GameActionButton extends StatelessWidget {
  const GameActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: AppSizes.horizontalMargin),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Reset Game'),
            ),
          ),
          AppSizes.gapW8,
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.danger,
              ),
              onPressed: () {},
              child: const Text('Reset Game'),
            ),
          ),
        ],
      ),
    );
  }
}
