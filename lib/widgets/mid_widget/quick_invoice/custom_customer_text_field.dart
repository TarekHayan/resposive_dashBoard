import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/custom_text_feild.dart';

class CustomCustomerTextField extends StatelessWidget {
  const CustomCustomerTextField({
    super.key,
    required this.title,
    required this.hint,
  });
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
