import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses_header.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses_items_builder.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesitemsBuilder(),
        ],
      ),
    );
  }
}
