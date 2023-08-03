import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/constants/app_colors.dart';
import 'package:tic_tac_toe_flutter/pages/input_page.dart';
import 'package:tic_tac_toe_flutter/themes/theme_button.dart';
import 'package:tic_tac_toe_flutter/themes/theme_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        elevatedButtonTheme: ThemeButton.elevatedButton,
        textButtonTheme: ThemeButton.textButton,
        inputDecorationTheme: ThemeInput.style,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const InputPage(),
    );
  }
}
