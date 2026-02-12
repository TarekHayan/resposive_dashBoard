import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/latest_transaction_model.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/mid_widget/quick_invoice/latest_transaction_item.dart';

class LatestTransactionItemListView extends StatelessWidget {
  const LatestTransactionItemListView({super.key});
  static const List<LatestTransactionModel> items = [
    LatestTransactionModel(
      image: Assets.imagesAvatar2,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    LatestTransactionModel(
      image: Assets.imagesAvatar3,
      title: "Josua Nunito",
      subTitle: "Josh Nunito@gmail.com",
    ),
    LatestTransactionModel(
      image: Assets.imagesAvatar2,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) {
          return IntrinsicWidth(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: LatestTransactionItem(items: e),
            ),
          );
        }).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: Padding(
    //           padding: const EdgeInsets.only(right: 12),
    //           child: LatestTransactionItem(items: items[index]),
    //         ),
    //       );
    //     },
    //   ),
    //);
  }
}
