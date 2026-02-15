import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/latest_transaction.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/quick_invoice_header.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/send_money_deatails.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),
          LatestTransaction(),
          Divider(thickness: 1, color: Color(0xffF1F1F1), height: 48),
          SendMoneyDeatails(),
        ],
      ),
    );
  }
}
