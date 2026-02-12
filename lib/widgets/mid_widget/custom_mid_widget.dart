import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/quick_invoice.dart';

class CustomMidWidget extends StatelessWidget {
  const CustomMidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 32),
      ],
    );
  }
}
