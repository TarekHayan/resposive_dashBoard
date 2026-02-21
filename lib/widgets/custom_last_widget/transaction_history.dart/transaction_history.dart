import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/transaction_history.dart/transaction_items_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        const SizedBox(height: 16),
        const TransactionItemsListView(),
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Transaction History", style: AppStyles.styleSemiBold20(context)),
        Text(
          "See all",
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
