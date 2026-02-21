import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/chart_details_model.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/income/chart_details.dart';

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
    return Column(
      children: chartDetails
          .map((e) => ChartDeatails(chartDetails: e))
          .toList(),
    );
    //   return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: chartDetails.length,
    //     itemBuilder: (context, index) {
    //       return ChartDeatails(chartDetails: chartDetails[index]);
    //     },
    //   );
  }
}
