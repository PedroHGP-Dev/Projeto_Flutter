import 'package:flutter/material.dart';
import 'package:projeto_aula/core/theme/colors.dart';
import 'package:projeto_aula/core/theme/text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorScaffold,
      appBar: AppBar(
        backgroundColor: AppColors.colorAppBar,
        title: const Text(
          'Home Page 4',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text(
          'Olá, espero que esteja bem!',
          style: TextStyles.googleFonts,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
