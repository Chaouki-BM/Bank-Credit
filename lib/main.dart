import 'package:bankcredit/features/on%20boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

import 'core/themes/themes.dart';
import 'features/splash/presentation/splash_view.dart';

void main() {
  runApp(const BankCredit());
}

class BankCredit extends StatelessWidget {
  const BankCredit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Credit',
      theme: lightTheme,
      home: const SplashView(),
      routes: {'/onBoarding': (context) => OnBoardingView()},
    );
  }
}
