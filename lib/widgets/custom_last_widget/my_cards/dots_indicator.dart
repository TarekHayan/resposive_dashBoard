import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.pageIndex});
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == pageIndex),
        ),
      ),
    );
  }
}
