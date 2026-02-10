import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer/drawe_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int indexActive = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: "Dashoard"),
    const DrawerItemModel(
      image: Assets.imagesMyTransaction,
      title: "My Transaction",
    ),
    const DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    const DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: "Wallet Account",
    ),
    const DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investments",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (indexActive != index) {
              setState(() {
                indexActive = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 28),
            child: DrawerItem(
              itemModel: items[index],
              isActive: indexActive == index,
            ),
          ),
        );
      },
    );
  }
}
