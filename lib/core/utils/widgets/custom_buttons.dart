import 'package:bankcredit/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButtons extends StatelessWidget {
  const CustomGeneralButtons({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.surface,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
