import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';

class CalculateBody extends StatefulWidget {
  const CalculateBody({super.key});

  @override
  State<CalculateBody> createState() => _CalculateBodyState();
}

class _CalculateBodyState extends State<CalculateBody> {
  TextEditingController LoanController = TextEditingController();
  TextEditingController TermController = TextEditingController();
  String term = "0";
  String result = "0";
  String loan = "0";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gradient Container
        Container(
          width: SizeConfig.screenWidth!,
          height: SizeConfig.screenHeight! * 0.3,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.surface,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.defaultsize! * 2,
              vertical: SizeConfig.defaultsize! * 2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // First Row: Loan & Interest
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Loan
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).Loan,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        SizedBox(height: SizeConfig.defaultsize! * 2),
                        Text(
                          loan,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ],
                    ),

                    // Interest
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          S.of(context).Interest,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        SizedBox(height: SizeConfig.defaultsize! * 2),
                        Text(
                          "5%",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: SizeConfig.defaultsize! * 3),

                // Second Row: Term & Monthly Payment
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Term
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.of(context).Term,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        SizedBox(height: SizeConfig.defaultsize! * 2),
                        Text(
                          term,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),

                    // Monthly Payment
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          S.of(context).MonthlyP,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                        SizedBox(height: SizeConfig.defaultsize! * 2),
                        Text(
                          result,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: SizeConfig.defaultsize! * 2),

        // TextField for Bill
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultsize! * 2,
          ),

          child: TextField(
            controller: LoanController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "${S.of(context).Loan} ${S.of(context).DT}",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.monetization_on),
            ),
            onChanged: (value) {},
          ),
        ),
        SizedBox(height: SizeConfig.defaultsize! * 3),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultsize! * 2,
          ),

          child: TextField(
            controller: TermController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "${S.of(context).Term} ${S.of(context).permonth}",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.receipt),
            ),
          ),
        ),
        SizedBox(height: SizeConfig.defaultsize! * 5),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.defaultsize! * 2,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: calculate,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                S.of(context).Calculate,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void calculate() {
    // Get the values from both TextFields
    loan = LoanController.text;
    term = TermController.text;

    // Convert to double for calculations
    double loanNumber = double.tryParse(loan) ?? 0;
    double termNumber = double.tryParse(term) ?? 0;
    double Interest = loanNumber * 0.05 * termNumber;
    setState(() {
      double calc = (loanNumber + Interest) / termNumber;
      if (calc.isNaN || calc.isInfinite) {
        result = "0 ${S.of(context).DT}";
        term = "0";
        loan = "0";
      } else {
        result = "${calc.round()} ${S.of(context).DT}";
      }
    });
  }
}
