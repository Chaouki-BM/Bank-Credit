import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/core/utils/widgets/custom_buttons.dart';
import 'package:bankcredit/core/utils/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: SizeConfig.defaultsize! * 10),
            Text(
              "Enter your name",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            SizedBox(height: SizeConfig.defaultsize! * 2),
            CustomTextField(inputType: TextInputType.text, maxLines: 1),
            SizedBox(height: SizeConfig.defaultsize! * 2),
            Text(
              "Enter your number",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            SizedBox(height: SizeConfig.defaultsize! * 2),
            CustomTextField(inputType: TextInputType.number, maxLines: 1),
            SizedBox(height: SizeConfig.defaultsize! * 2),
            Text(
              "Enter your address",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            SizedBox(height: SizeConfig.defaultsize! * 2),
            CustomTextField(inputType: TextInputType.text, maxLines: 5),
            SizedBox(height: SizeConfig.defaultsize! * 10),
            CustomGeneralButtons(
              text: 'Login',
              onTap: () => HandelLogin(context),
            ),
          ],
        ),
      ),
    );
  }

  void HandelLogin(BuildContext context) {
    Navigator.pushNamed(context, '/home');
  }
}
