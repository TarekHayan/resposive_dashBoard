import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/icome_body.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/in_come_header.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [InComeHeader(), SizedBox(height: 16), InComeBody()],
      ),
    );
  }
}
