import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItem(
              itemModel: AllExpensessItemModel(
                  image: Assets.income,
                  title: "Income",
                  date: "April 2022",
                  price: r"$20,129"))
        ],
      ),
    );
  }
}
