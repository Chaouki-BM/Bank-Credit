import 'package:bankcredit/features/calculate/presentation/calculate_view.dart';
import 'package:bankcredit/features/home/presentation/home_view.dart';
import 'package:bankcredit/features/settings/presentation/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:bankcredit/generated/l10n.dart';

class ButtomNavigatioBody extends StatefulWidget {
  const ButtomNavigatioBody({super.key, required this.onLocaleChange});
  final Function(Locale) onLocaleChange;

  @override
  State<ButtomNavigatioBody> createState() => _ButtomNavigatioBodyState();
}

class _ButtomNavigatioBodyState extends State<ButtomNavigatioBody> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widjetList = [
      const HomeView(),
      const CalculateView(),
      SettingView(onLocaleChange: widget.onLocaleChange),
    ];
    return Scaffold(
      body: IndexedStack(index: myindex, children: widjetList),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Theme.of(context).colorScheme.onSurface,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: S.of(context).Home,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: S.of(context).Calculate,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: S.of(context).Profile,
          ),
        ],
      ),
    );
  }
}
