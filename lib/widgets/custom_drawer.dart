import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/widgets/drawer_items_options.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar1,
              title: "Lekan Okeowo",
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: DrawerItemsOptions(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 48)),
        ],
      ),
    );
  }
}
