import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/all_expenses_items.dart';
import 'package:responsive_dashboard/core/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_exepenses/all_expenses_items.dart';

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
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: index == 1
                  ? const EdgeInsetsGeometry.symmetric(horizontal: 12)
                  : EdgeInsetsGeometry.zero,
              child: AllExpensesitems(
                items: item,
                isActive: activeIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
