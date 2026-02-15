import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/custom_buttom.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/custom_customer_text_field.dart';

class SendMoneyDeatails extends StatelessWidget {
  const SendMoneyDeatails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomCustomerTextField(
                title: "Customer name",
                hint: "Type customer name",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: CustomCustomerTextField(
                title: "Customer Email",
                hint: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomCustomerTextField(
                title: "Item name",
                hint: "Type item name",
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: CustomCustomerTextField(title: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButtom(
                title: "Add more details",
                buttonColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(child: CustomButtom()),
          ],
        ),
      ],
    );
  }
}
