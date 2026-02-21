import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/all_expenses_items.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/mid_widget/all_exepenses/all_expenses_items.dart';

class AllExpensesitemsBuilder extends StatefulWidget {
  const AllExpensesitemsBuilder({super.key});

  @override
  State<AllExpensesitemsBuilder> createState() =>
      _AllExpensesitemsBuilderState();
}

class _AllExpensesitemsBuilderState extends State<AllExpensesitemsBuilder> {
  int activeIndex = 0;
  final List<AllExpensesItemsModel> items = [
    const AllExpensesItemsModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensesItemsModel(
      image: Assets.imagesInconme,
      title: "income",
      date: "April 2022",
      price: r"$20,129",
    ),
    const AllExpensesItemsModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 0;
              });
            },
            child: AllExpensesitems(
              items: items[0],
              isActive: activeIndex == 0,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 1;
              });
            },
            child: AllExpensesitems(
              items: items[1],
              isActive: activeIndex == 1,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = 2;
              });
            },
            child: AllExpensesitems(
              items: items[2],
              isActive: activeIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
