import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/widgets/card_dialog.dart';

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({
    super.key,
    required this.resetBoard,
    required this.winner,
  });
  final Function resetBoard;
  final String winner;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          CardDialog(
            resetBoard: resetBoard,
            winner: winner,
          ),
          Positioned(
            top: 0,
            right: 0,
            height: 28,
            width: 28,
            child: OutlinedButton(
              onPressed: () {
                resetBoard();
                Navigator.of(context).pop();
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.all(AppSizes.p8),
                shape: const CircleBorder(),
                backgroundColor: AppColors.danger,
              ),
              child: SvgPicture.asset(AppAssets.cross),
            ),
          )
        ],
      ),
    );
  }
}
