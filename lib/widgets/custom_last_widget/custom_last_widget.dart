import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/my_cards.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/transaction_history.dart/transaction_history.dart';

class CustomLastWidget extends StatelessWidget {
  const CustomLastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [SizedBox(height: 40), Expanded(child: MyCardsAndTransactionHistory())],
    );
  }
}

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(),
          Divider(color: Color(0xffF1F1F1), height: 40),
          Expanded(child: TransactionHistory()),
        ],
      ),
    );
  }
}
