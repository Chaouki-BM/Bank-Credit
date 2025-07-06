import 'package:bankcredit/features/authentication/presentation/complete_information/complete_information_view.dart';
import 'package:bankcredit/features/authentication/presentation/login/login_view.dart';
import 'package:bankcredit/features/home/presentation/home_view.dart';
import 'package:bankcredit/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:flutter/material.dart';

import 'core/themes/themes.dart';
import 'features/splash/presentation/splash_view.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url:
        'https://ozfyahiuetvcaudtcrvu.supabase.co', // <-- from Supabase dashboard
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im96ZnlhaGl1ZXR2Y2F1ZHRjcnZ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE4MjUyMDUsImV4cCI6MjA2NzQwMTIwNX0.AXSi4MTCZeRbX2vnGp9MhgnW-s3pojl1aeF_eTCvSeo', // <-- from Supabase dashboard
  );

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
        '/home': (context) => HomeView(),
      },
    );
  }
}
