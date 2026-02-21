import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/transaction_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.items});
  final TransactionItemModel items;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(items.title, style: AppStyles.styleSemiBold16(context)),
        ),

        subtitle: Text(
          items.date,
          style: AppStyles.styleRegular16(
            context,
          ).copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          items.price,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: items.isIncom
                ? const Color(0xff7DD97B)
                : const Color(0xffF3735E),
          ),
        ),
      ),
    );
  }
}
