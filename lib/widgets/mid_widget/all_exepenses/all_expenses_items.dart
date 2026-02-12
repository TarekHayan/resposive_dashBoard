import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/all_expenses_items.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_exepenses_items_header.dart';

class AllExpensesitems extends StatelessWidget {
  const AllExpensesitems({
    super.key,
    required this.items,
    required this.isActive,
  });
  final AllExpensesItemsModel items;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExepensesItemsHeader(image: items.image, isActive: isActive),
          const SizedBox(height: 34),
          Text(
            items.title,
            style: isActive
                ? AppStyles.styleSemiBold16.copyWith(color: Colors.white)
                : AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),

          Text(
            items.date,
            style: isActive
                ? AppStyles.styleRegular14.copyWith(color: Colors.white)
                : AppStyles.styleRegular14,
          ),
          const SizedBox(height: 16),

          Text(
            items.price,
            style: isActive
                ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
                : AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
