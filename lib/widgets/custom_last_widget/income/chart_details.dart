import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/chart_details_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class ChartDeatails extends StatelessWidget {
  const ChartDeatails({super.key, required this.chartDetails});
  final ChartDetailsModel chartDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 8,
        height: 8,
        decoration: ShapeDecoration(
          color: chartDetails.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      title: Text(chartDetails.title, style: AppStyles.styleRegular16(context)),
      trailing: Text(
        chartDetails.value,
        style: AppStyles.styleMedium16(
          context,
        ).copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}
