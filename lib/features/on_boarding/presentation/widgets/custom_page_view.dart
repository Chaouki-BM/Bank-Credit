import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/features/on_boarding/presentation/widgets/page_view_item.dart';
import 'package:bankcredit/generated/l10n.dart';
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
          title: S.of(context).SplashT1,
          subTitle: S.of(context).SsubT1,
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: S.of(context).SplashT2,
          subTitle: S.of(context).SsubT2,
        ),
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: S.of(context).SplashT3,
          subTitle: S.of(context).SsubT3,
        ),
      ],
    );
  }
}
