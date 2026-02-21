import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/quick_invoice.dart';

class CustomMidWidget extends StatelessWidget {
  const CustomMidWidget({super.key, required this.layout});
  final bool layout;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: layout ? 0 : 40),
        const AllExpenses(),
        const SizedBox(height: 24),
        const QuickInvoice(),
        SizedBox(height: layout ? 0 : 32),
      ],
    );
  }
}
