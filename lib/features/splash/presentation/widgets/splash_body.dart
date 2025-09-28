import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> rotationAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    rotationAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: animationController, curve: Curves.decelerate),
    );
    animationController.forward().then((_) {
      animationController.reverse();
    });

    GoToNextView();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              S.of(context).splashText,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 41,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 50),
          RotationTransition(
            turns: rotationAnimation,
            child: SvgPicture.asset(
              'assets/images/Travelline.svg',
              height: 180,
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void GoToNextView() {
    Future.delayed(Duration(milliseconds: 3200), () {
      Navigator.pushNamed(context, '/onBoarding');
    });
  }
}
