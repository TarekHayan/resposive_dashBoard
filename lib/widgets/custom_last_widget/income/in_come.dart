import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/chart_details_model.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/core/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/in_come_header.dart';

class InCome extends StatelessWidget {
  const InCome({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          InComeHeader(),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: CustomChart()),
                Expanded(child: ChartDeatailsList()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomChart extends StatefulWidget {
  const CustomChart({super.key});

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
          showTitle: false,
          radius: index == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: index == 1 ? 60 : 50,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: index == 2 ? 60 : 50,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: index == 3 ? 60 : 50,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}

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
      title: Text(chartDetails.title, style: AppStyles.styleRegular16),
      trailing: Text(
        chartDetails.value,
        style: AppStyles.styleMedium16.copyWith(color: const Color(0xff208CC8)),
      ),
    );
  }
}

class ChartDeatailsList extends StatelessWidget {
  const ChartDeatailsList({super.key});
  static const List<ChartDetailsModel> chartDetails = [
    ChartDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    ChartDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    ChartDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      value: "20%",
    ),
    ChartDetailsModel(color: Color(0xffE2DECD), title: "Other", value: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: chartDetails.length,
      itemBuilder: (context, index) {
        return ChartDeatails(chartDetails: chartDetails[index]);
      },
    );
  }
}
