import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/quick_invoice.dart';

class CustomMidWidget extends StatelessWidget {
  const CustomMidWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuickInvoice()),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}
