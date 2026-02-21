import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/in_come.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/my_cards.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/transaction_history.dart/transaction_history.dart';

class CustomLastWidget extends StatelessWidget {
  const CustomLastWidget({super.key, required this.layout});
  final bool layout;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(height: layout ? 0 : 40),
        const MyCardsAndTransactionHistory(),
        const SizedBox(height: 24),
        width >= SizeConfig.web
            ? const Expanded(child: InCome())
            : const InCome(),
      ],
    );
  }
}

class MyCardsAndTransactionHistory extends StatelessWidget {
  const MyCardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCard(),
          Divider(color: Color(0xffF1F1F1), height: 40),
          TransactionHistory(),
        ],
      ),
    );
  }
}
