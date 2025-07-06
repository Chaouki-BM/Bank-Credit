import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/core/utils/widgets/custom_buttons.dart';
import 'package:bankcredit/features/authentication/data/respotries/auth_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultsize! * 10),
        SizedBox(
          height: SizeConfig.defaultsize! * 28,
          child: Image.asset('assets/images/Login.png'),
        ),
        AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText(
              'Bank Credit',
              textStyle: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Theme.of(context).colorScheme.primary,
              ),
              speed: Duration(milliseconds: 150),
            ),
          ],
          totalRepeatCount: 1,
          pause: Duration(milliseconds: 1000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
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
                  onTap: () => handelLoginwithFb(context),
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
                  onTap: () => handelLoginwithGG(context),
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

  void handelLoginwithFb(BuildContext context) {
    print("handelLoginwithfb");
    Navigator.pushNamed(context, '/completeInformation');
  }

  void handelLoginwithGG(BuildContext context) async {
    print("handelLoginwithGG");
    final user = await AuthRepoImpl().loginWithGoogle();
    if (user != null) {
      Navigator.pushNamed(context, '/completeInformation');
      print("user $user");
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Login failed or cancelled')));
    }
  }
}
