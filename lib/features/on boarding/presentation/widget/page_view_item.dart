import 'package:bankcredit/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, this.image, this.subTitle, this.title});
  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultsize! * 22),
        Container(
          height: SizeConfig.defaultsize! * 30,
          child: Image.asset(image!),
        ),
        SizedBox(height: SizeConfig.defaultsize! * 5),
        Text(
          title!,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            color: Theme.of(context).colorScheme.secondary,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: SizeConfig.defaultsize! * 2),
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            subTitle!,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 15,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
