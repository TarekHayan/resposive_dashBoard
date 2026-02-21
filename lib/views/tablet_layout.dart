import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/custom_last_widget.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/mid_widget/custom_mid_widget.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                CustomMidWidget(layout: true),
                SizedBox(height: 24),
                CustomLastWidget(layout: true),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
