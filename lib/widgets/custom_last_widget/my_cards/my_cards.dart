import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/cards_page_view.dart';
import 'package:responsive_dashboard/widgets/custom_last_widget/my_cards/dots_indicator.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  late PageController pageController;
  int index = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      index = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("My card", style: AppStyles.styleSemiBold20(context)),
        const SizedBox(height: 20),
        CardsPageView(pageController: pageController),
        const SizedBox(height: 19),
        DotsIndicator(pageIndex: index),
      ],
    );
  }
}
