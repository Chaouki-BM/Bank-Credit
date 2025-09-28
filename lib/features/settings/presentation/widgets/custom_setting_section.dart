import 'package:bankcredit/core/utils/size_config.dart';
import 'package:flutter/material.dart';

typedef OnRowTap = void Function();

class CustomSettingSection extends StatelessWidget {
  const CustomSettingSection({
    super.key,
    required this.CustomIcon,
    required this.CustomText,
    required this.onTap,
  });
  final IconData CustomIcon;
  final String CustomText;
  final OnRowTap onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(CustomIcon),
            SizedBox(width: SizeConfig.defaultsize! * 1),
            Text(
              CustomText,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSettingSectionPlus extends StatelessWidget {
  const CustomSettingSectionPlus({
    required this.CustomIcon,
    required this.CustomText,
    required this.onTap,
    super.key,
    required this.CustomIconTow,
  });
  final IconData CustomIcon;
  final IconData CustomIconTow;
  final String CustomText;
  final OnRowTap onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(CustomIcon),
            SizedBox(width: SizeConfig.defaultsize! * 1),
            Text(
              CustomText,
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Icon(CustomIconTow),
          ],
        ),
      ),
    );
  }
}
