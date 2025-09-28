import 'package:bankcredit/features/calculate/presentation/widgets/calculate_body.dart';
import 'package:flutter/material.dart';

class CalculateView extends StatelessWidget {
  const CalculateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(child: CalculateBody()),
    );
  }
}
