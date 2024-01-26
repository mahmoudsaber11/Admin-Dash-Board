import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expenses.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
