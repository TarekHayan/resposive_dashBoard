import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_exepenses/all_expenses.dart';

class CustomMidWidget extends StatelessWidget {
  const CustomMidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [SizedBox(height: 40), AllExpenses()]);
  }
}
