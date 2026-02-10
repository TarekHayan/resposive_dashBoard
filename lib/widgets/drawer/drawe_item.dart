import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/widgets/drawer/active_&_inactive_drawer_items.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.itemModel,
    required this.isActive,
  });

  final DrawerItemModel itemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemModel: itemModel)
        : InActiveDrawerItem(itemModel: itemModel);
  }
}
