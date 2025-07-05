import 'package:bankcredit/features/authentication/presentation/complete_information/widgets/complete_information_body.dart';
import 'package:flutter/material.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CompleteInformationBody(),
    );
  }
}
