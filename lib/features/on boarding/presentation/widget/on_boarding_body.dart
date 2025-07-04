import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/core/utils/widgets/custom_buttons.dart';

import 'package:flutter/material.dart';

import 'custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          top: SizeConfig.defaultsize! * 10,
          right: 32,
          child: Text(
            'Skip',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultsize! * 10,
          right: SizeConfig.defaultsize! * 10,
          bottom: SizeConfig.defaultsize! * 10,
          child: CustomGeneralButtons(text: 'next'),
        ),
      ],
    );
  }
}
