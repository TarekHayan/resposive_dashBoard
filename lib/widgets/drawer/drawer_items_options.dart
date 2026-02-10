import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer/active_&_inactive_drawer_items.dart';

class DrawerItemsOptions extends StatelessWidget {
  const DrawerItemsOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 28),
      child: Column(
        children: [
          Expanded(child: SizedBox(height: 20)),
          InActiveDrawerItem(
            itemModel: DrawerItemModel(
              image: Assets.imagesSettings,
              title: "Setting system",
            ),
          ),
          SizedBox(height: 20),
          InActiveDrawerItem(
            itemModel: DrawerItemModel(
              image: Assets.imagesLogout,
              title: "Logout account",
            ),
          ),
        ],
      ),
    );
  }
}
