import 'package:bankcredit/features/settings/presentation/widgets/setting_body.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  final Function(Locale) onLocaleChange;

  const SettingView({super.key, required this.onLocaleChange});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SettingBody(onLocaleChange: onLocaleChange)),
    );
  }
}
