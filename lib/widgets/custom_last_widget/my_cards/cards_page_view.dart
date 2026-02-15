import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/card_deatails.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(3, (index) {
        return index == 1
            ? const CardDeatails(color: Colors.black)
            : index == 2
            ? const CardDeatails(color: Colors.red)
            : const CardDeatails();
      }),
    );
  }
}
