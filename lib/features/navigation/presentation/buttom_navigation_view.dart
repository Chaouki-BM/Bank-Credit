import 'package:bankcredit/features/navigation/presentation/widgets/Buttom_Navigatio_Body.dart';
import 'package:flutter/material.dart';

class ButtomNavigationView extends StatefulWidget {
  const ButtomNavigationView({super.key, required this.onLocaleChange});
  final Function(Locale) onLocaleChange;
  @override
  State<ButtomNavigationView> createState() => _ButtomNavigationViewState();
}

class _ButtomNavigationViewState extends State<ButtomNavigationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: ButtomNavigatioBody(onLocaleChange: widget.onLocaleChange),
    );
  }
}
