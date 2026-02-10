import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_expenses.dart';

class CustomMidWidget extends StatelessWidget {
  const CustomMidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [SizedBox(height: 40), AllExpenses()]);
  }
}
