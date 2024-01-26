import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_header.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}
