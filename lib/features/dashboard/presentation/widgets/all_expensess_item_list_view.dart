import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

class AllExpensessItemListView extends StatefulWidget {
  const AllExpensessItemListView({super.key});

  @override
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  final items = [
    const AllExpensessItemModel(
        image: Assets.balance,
        title: "Balance",
        date: "April 2022",
        price: r"$20,129"),
    const AllExpensessItemModel(
        image: Assets.income,
        title: "Income",
        date: "April 2022",
        price: r"$20,129"),
    const AllExpensessItemModel(
        image: Assets.expenses,
        title: "Expenses",
        date: "April 2022",
        price: r"$20,129"),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;

        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
