import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/custom_last_widget.dart';
import 'package:responsive_dashboard/widgets/drawer/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/mid_widget/custom_mid_widget.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: CustomMidWidget(layout: false)),
                    SizedBox(width: 24),
                    Expanded(child: CustomLastWidget(layout: false)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
