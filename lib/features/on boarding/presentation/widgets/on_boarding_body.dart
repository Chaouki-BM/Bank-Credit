import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/core/utils/widgets/custom_buttons.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';

import 'custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    // TODO: implement initState
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(pageController: pageController),
        Positioned(
          bottom: SizeConfig.defaultsize! * 22,
          left: 0,
          right: 0,
          child: DotsIndicator(
            dotsCount: 3,
            position: pageController!.hasClients
                ? pageController?.page ?? 0.0
                : 0.0,
            decorator: DotsDecorator(
              color: Colors.transparent,
              activeColor: Theme.of(context).colorScheme.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultsize! * 10,
            right: 32,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultsize! * 10,
          right: SizeConfig.defaultsize! * 10,
          bottom: SizeConfig.defaultsize! * 10,
          child: CustomGeneralButtons(
            text: pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'next')
                : 'next',
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              } else {
                Navigator.pushNamed(context, '/login');
              }
            },
          ),
        ),
      ],
    );
  }
}
