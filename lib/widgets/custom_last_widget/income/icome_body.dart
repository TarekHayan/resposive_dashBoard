import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/chart_details_list.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/custom_chart.dart';

class InComeBody extends StatelessWidget {
  const InComeBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.web && width < 3071
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CustomChart(showDeatails: true),
            ),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: CustomChart(showDeatails: false)),
              Expanded(flex: 2, child: ChartDeatailsList()),
            ],
          );
  }
}
