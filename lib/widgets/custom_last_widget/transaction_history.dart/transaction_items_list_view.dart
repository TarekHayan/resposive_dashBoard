import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/transaction_item_model.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/transaction_history.dart/transaction_item.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({super.key});
  static const List<TransactionItemModel> items = [
    TransactionItemModel(
      title: "Cash Withdrawal",
      date: "13 Apr, 2022",
      price: r"$20,129",
      isIncom: false,
    ),
    TransactionItemModel(
      title: "Landing Page project",
      date: "13 Apr, 2022 at 3:30 PM",
      price: r"$20,129",
      isIncom: true,
    ),
    TransactionItemModel(
      title: "Juni Mobile App project",
      date: "13 Apr, 2022 at 3:30 PM",
      price: r"$20,129",
      isIncom: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(items: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   scrollDirection: Axis.vertical,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return Padding(
    //       padding: const EdgeInsets.only(bottom: 12),
    //       child: TransactionItem(items: items[index]),
    //     );
    //   },
    // );
  }
}
