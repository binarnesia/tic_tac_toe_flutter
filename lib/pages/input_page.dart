import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_assets.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/constants/app_sizes.dart';
import 'package:tic_tac_toe_flutter/pages/home_page.dart';
import 'package:tic_tac_toe_flutter/widgets/game_logo.dart';
import 'package:tic_tac_toe_flutter/widgets/icon_game.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

late TextEditingController playerOneController;
late TextEditingController playerTwoController;

class _InputPageState extends State<InputPage> {
  bool iscompleted() {
    if (playerOneController.text != '' && playerTwoController.text != '') {
      setState(() {});
      return true;
    } else {
      setState(() {});
      return false;
    }
  }

  @override
  void initState() {
    playerOneController = TextEditingController();
    playerTwoController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Stack(
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
                    TextField(
                      controller: playerOneController,
                      decoration: const InputDecoration(
                        icon: IconGame(
                          size: AppSizes.p38,
                          isBorder: true,
                        ),
                        hintText: 'Enter player one’s Name',
                      ),
                    ),
                    AppSizes.gapH16,
                    TextField(
                      controller: playerTwoController,
                      onChanged: (value) {
                        iscompleted();
                      },
                      decoration: const InputDecoration(
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
                        onPressed: iscompleted()
                            ? () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(
                                        playerOne: playerOneController.text,
                                        playerTwo: playerTwoController.text,
                                      ),
                                    ),
                                    (route) => false);
                              }
                            : null,
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
      ),
    );
  }
}
