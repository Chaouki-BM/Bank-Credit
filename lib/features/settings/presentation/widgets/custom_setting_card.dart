import 'package:bankcredit/core/utils/size_config.dart';
import 'package:flutter/material.dart';

typedef OnRowTap = void Function();

class CustomSettingCard extends StatelessWidget {
  const CustomSettingCard({
    super.key,
    required this.Customtext,
    required this.icon,
    required this.onTap,
  });
  final String Customtext;
  final IconData icon;
  final OnRowTap onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          shape: BoxShape.rectangle,
          border: Border.all(
            style: BorderStyle.solid,
            color: const Color.fromARGB(255, 226, 229, 232),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            end: SizeConfig.defaultsize! * 0.5,
            start: SizeConfig.defaultsize! * 0.5,
            bottom: SizeConfig.defaultsize! * 1.5,
            top: SizeConfig.defaultsize! * 1.5,
          ),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: SizeConfig.defaultsize! * 0.3),
              Text(
                Customtext,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
