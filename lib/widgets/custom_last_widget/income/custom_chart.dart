import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';

class CustomChart extends StatefulWidget {
  const CustomChart({super.key, required this.showDeatails});
  final bool showDeatails;
  @override
  State<CustomChart> createState() => _CustomChartState();
}

class _CustomChartState extends State<CustomChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartData()));
  }

  int index = -1;

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          index = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: index == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: index == 0 ? null : Colors.white),
          title: index == 0 ? "Designservice" : "40%",
          showTitle: widget.showDeatails,
          radius: index == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: index == 1 ? 2.1 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: index == 1 ? null : Colors.white),
          title: index == 1 ? "Design product" : "25%",
          showTitle: widget.showDeatails,
          value: 25,
          radius: index == 1 ? 60 : 50,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: index == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: index == 2 ? null : Colors.white),
          title: index == 2 ? "Product royalti" : "20%",
          showTitle: widget.showDeatails,
          value: 20,
          radius: index == 2 ? 60 : 50,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: index == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: index == 3 ? null : Colors.white),
          title: index == 3 ? "Other" : "22%",
          showTitle: widget.showDeatails,
          value: 22,
          radius: index == 3 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
