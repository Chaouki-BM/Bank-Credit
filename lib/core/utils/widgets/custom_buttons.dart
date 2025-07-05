import 'package:bankcredit/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButtons extends StatelessWidget {
  const CustomGeneralButtons({super.key, this.text, this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}

class CustomButtonsWithIcon extends StatelessWidget {
  const CustomButtonsWithIcon({
    super.key,
    this.onTap,
    this.iconData,
    required this.text,
    required this.colorData,
  });
  final VoidCallback? onTap;
  final IconData? iconData;
  final String text;
  final Color colorData;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
          border: Border.all(color: Theme.of(context).colorScheme.onSurface),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: colorData),
            SizedBox(width: SizeConfig.defaultsize! * 2),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
