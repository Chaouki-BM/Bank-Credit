import 'package:bankcredit/features/scan/presentation/widgets/scan_body.dart';
import 'package:flutter/material.dart';

class ScanView extends StatelessWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(child: ScanBody()),
    );
  }
}
