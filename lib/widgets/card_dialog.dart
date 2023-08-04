import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';

class CardDialog extends StatelessWidget {
  const CardDialog({
    super.key,
    required this.resetBoard,
    required this.winner,
  });

  final Function resetBoard;
  final String winner;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSizes.p32,
        vertical: AppSizes.p8,
      ),
      margin: const EdgeInsets.all(AppSizes.p14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.p12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.celebration_outlined,
            color: AppColors.primaryColor,
            size: AppSizes.p64,
          ),
          const SizedBox(
            height: AppSizes.p24,
          ),
          Text(
            'Congratulation',
            style: GoogleFonts.quantico(
              fontSize: AppSizes.p24,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppSizes.p4,
          ),
          Text(
            '$winner is The Winner of This Game',
            textAlign: TextAlign.center,
            style: GoogleFonts.quantico(
              fontSize: AppSizes.p16,
              fontWeight: FontWeight.w300,
              color: AppColors.inactive300,
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                resetBoard();
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          )
        ],
      ),
    );
  }
}
