import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/core/models/drawer_item_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.itemModel});
  final DrawerItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemModel.image),
      title: Text(itemModel.title, style: AppStyles.styleMedium16),
    );
  }
}
