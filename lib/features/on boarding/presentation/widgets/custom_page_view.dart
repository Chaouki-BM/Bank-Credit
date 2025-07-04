import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/features/on%20boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, @required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'Welcome to BankCredit',
          subTitle:
              'Manage your money, credit, and future — all in one secure app.',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'Instant Access to Credit',
          subTitle:
              'Apply for loans, manage your credit cards, and track limits in real time.',
        ),
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'Secure. Reliable. Always with You.',
          subTitle:
              'Your data is protected with bank-grade encryption and real-time notifications keep you informed.',
        ),
      ],
    );
  }
}
