import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

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

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.itemModel});

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: Text(itemModel.title, style: AppStyles.styleMedium16),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.itemModel});

  final DrawerItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: Text(itemModel.title, style: AppStyles.styleBold16),
      trailing: Container(width: 3.27, color: const Color(0xff4EB7F2)),
    );
  }
}
