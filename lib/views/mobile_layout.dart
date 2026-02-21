import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/custom_last_widget.dart';
import 'package:responsive_dashboard/widgets/mid_widget/custom_mid_widget.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomMidWidget(layout: true),
          SizedBox(height: 24),
          CustomLastWidget(layout: true),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
