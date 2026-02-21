import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomDateBox extends StatelessWidget {
  const CustomDateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: const Color(0xffF1F1F1)),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text("Monthly", style: AppStyles.styleMedium16(context)),
          ),
          const Icon(Icons.arrow_drop_down, color: Color(0xff064061)),
        ],
      ),
    );
  }
}
