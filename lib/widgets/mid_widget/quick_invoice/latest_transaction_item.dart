import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.items});
  final LatestTransactionModel items;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffFAFAFA),
      ),
      child: ListTile(
        leading: SvgPicture.asset(items.image),
        title: Text(items.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(items.subTitle, style: AppStyles.styleRegular12),
      ),
    );
  }
}
