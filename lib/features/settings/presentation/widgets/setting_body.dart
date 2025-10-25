import 'package:bankcredit/core/utils/app_launcher.dart';
import 'package:bankcredit/core/utils/locale_storage.dart';
import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/features/settings/presentation/widgets/custom_setting_card.dart';
import 'package:bankcredit/features/settings/presentation/widgets/custom_setting_section.dart';
import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key, required this.onLocaleChange});
  final Function(Locale) onLocaleChange;

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: SizeConfig.defaultsize! * 1),
          Center(
            child: Text(
              S.of(context).account_settings,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.defaultsize! * 2),
          const Center(
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: Icon(Icons.face, size: 40),
            ),
          ),
          SizedBox(height: SizeConfig.defaultsize! * 1),
          Center(
            child: Text(
              "chaouki Ben Miled",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: SizeConfig.defaultsize! * 1),
          Center(
            child: Text(
              "@benMiled01",
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: SizeConfig.defaultsize! * 4),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    end: SizeConfig.defaultsize! * 0.5,
                    start: SizeConfig.defaultsize! * 1,
                    bottom: 2,
                  ),
                  child: CustomSettingCard(
                    onTap: () {
                      print("Call the bank clicked !");
                      AppLauncher.callPhone("54144315");
                    },
                    Customtext: S.of(context).call_the_bank,
                    icon: Icons.call,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(
                    end: SizeConfig.defaultsize! * 0.5,
                    start: SizeConfig.defaultsize! * 1,
                    bottom: 2,
                  ),
                  child: CustomSettingCard(
                    onTap: () {
                      print("Online support clicked !");
                      AppLauncher.openWebsite(
                        "https://www.linkedin.com/company/travelline",
                      );
                    },
                    Customtext: S.of(context).online_support,
                    icon: Icons.message,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: SizeConfig.defaultsize! * 2),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).dashboard,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(height: SizeConfig.defaultsize! * 2),
                    CustomSettingSection(
                      CustomIcon: Icons.info_outline,
                      CustomText: S.of(context).profile_information,
                      onTap: () {
                        print("Profile Information clicked");
                      },
                    ),

                    SizedBox(height: SizeConfig.defaultsize! * 1),
                    CustomSettingSection(
                      CustomIcon: Icons.credit_card,
                      CustomText: S.of(context).linked_card,
                      onTap: () {
                        print("linked cards clicked");
                      },
                    ),
                    SizedBox(height: SizeConfig.defaultsize! * 1),
                    CustomSettingSectionPlus(
                      CustomIcon: Icons.language,
                      CustomIconTow: isClicked
                          ? Icons.arrow_drop_down
                          : Icons.arrow_right,
                      CustomText: S.of(context).language,
                      onTap: () {
                        setState(() {
                          isClicked = !isClicked;
                        });
                        print("language clicked");
                      },
                    ),
                    if (isClicked)
                      Padding(
                        padding: EdgeInsetsDirectional.only(
                          start: SizeConfig.defaultsize! * 5,
                          bottom: 2,
                        ),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                widget.onLocaleChange(const Locale('en'));
                                LocaleStorage.saveLocale(const Locale('en'));
                                isClicked = false;
                              },
                              child: Text(
                                S.of(context).en,
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: SizeConfig.defaultsize! * 1),
                            InkWell(
                              onTap: () {
                                widget.onLocaleChange(const Locale('fr'));
                                LocaleStorage.saveLocale(const Locale('fr'));
                                isClicked = false;
                              },
                              child: Text(
                                S.of(context).fr,
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            SizedBox(height: SizeConfig.defaultsize! * 1),
                            InkWell(
                              onTap: () {
                                widget.onLocaleChange(const Locale('ar'));
                                LocaleStorage.saveLocale(const Locale('ar'));
                                isClicked = false;
                              },
                              child: Text(
                                S.of(context).ar,
                                style: TextStyle(
                                  color: Theme.of(
                                    context,
                                  ).colorScheme.onSurface,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                    SizedBox(height: SizeConfig.defaultsize! * 2),
                    Text(
                      S.of(context).account,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    SizedBox(height: SizeConfig.defaultsize! * 1),
                    CustomSettingSection(
                      CustomIcon: Icons.logout,
                      CustomText: S.of(context).logout,
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/login');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
