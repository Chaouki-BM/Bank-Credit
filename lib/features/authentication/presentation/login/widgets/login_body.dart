import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/core/utils/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> fadeAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );
    fadeAnimation = Tween<double>(
      begin: .2,
      end: 1,
    ).animate(animationController);
    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultsize! * 10),
        SizedBox(
          height: SizeConfig.defaultsize! * 28,
          child: Image.asset('assets/images/Login.png'),
        ),
        FadeTransition(
          opacity: fadeAnimation,
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 51,
                color: Theme.of(context).colorScheme.primary,
              ),
              children: [
                TextSpan(
                  text: 'B',
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: 'ank Credit',
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 8),
                child: CustomButtonsWithIcon(
                  text: 'Login with',
                  iconData: FontAwesomeIcons.facebookF,
                  colorData: const Color(0xFF1877F2),
                  onTap: () => handelLoginwithFb(),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 8),
                child: CustomButtonsWithIcon(
                  text: 'Login with',
                  iconData: FontAwesomeIcons.googlePlusG,
                  colorData: const Color(0xFFEA4335),
                  onTap: () => handelLoginwithGG(),
                ),
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        Text(
          "Welcome to BankCredit !",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }

  void handelLoginwithFb() {
    print("handelLoginwithfb");
    Navigator.pushNamed(context, '/completeInformation');
  }

  void handelLoginwithGG() {
    print("handelLoginwithGG");
    Navigator.pushNamed(context, '/completeInformation');
  }
}
