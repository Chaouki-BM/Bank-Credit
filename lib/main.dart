import 'package:bankcredit/features/authentication/presentation/complete_information/complete_information_view.dart';
import 'package:bankcredit/features/authentication/presentation/login/login_view.dart';
import 'package:bankcredit/features/on_boarding/presentation/on_boarding_view.dart';
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
      routes: {
        '/onBoarding': (context) => OnBoardingView(),
        '/login': (context) => LoginView(),
        '/completeInformation': (context) => CompleteInformationView(),
      },
    );
  }
}
