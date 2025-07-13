import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/features/home/presentation/widgets/custom_home_card.dart';
import 'package:bankcredit/features/home/presentation/widgets/scroll_view_item.dart';
import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.defaultsize! * 4),
              Text(
                S.of(context).account,
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              SizedBox(height: SizeConfig.defaultsize! * 1),
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.grey,
                child: Icon(Icons.face, size: 65),
              ),
              SizedBox(height: SizeConfig.defaultsize! * 1),
              Text(
                "Chaouki Ben Miled",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
                "${S.of(context).accountNumber} : 123456789",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.defaultsize! * 1),

        Padding(
          padding: EdgeInsetsGeometry.only(left: 10, right: 10, bottom: 7),
          child: CustomHomeCard(
            titel: S.of(context).balance,
            value: '\$5.432.10 💰',
          ),
        ),

        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 3,
                  start: 10,
                  bottom: 2,
                ),
                child: CustomHomeCard(
                  titel: S.of(context).totalRequest,
                  value: '5 📋',
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(
                  end: 10,
                  start: 3,
                  bottom: 2,
                ),
                child: CustomHomeCard(
                  titel: S.of(context).accepted,
                  value: '2 ✔️',
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: SizeConfig.defaultsize! * .5),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                shape: BoxShape.rectangle,
                border: Border.all(
                  style: BorderStyle.solid,
                  color: const Color.fromARGB(255, 226, 229, 232),
                ),
              ),
              child: Column(
                children: [
                  ...List.generate(
                    20,
                    (index) => ScrollViewItem(),
                    //ListTile(title: Text("Item ${index + 1}")),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
