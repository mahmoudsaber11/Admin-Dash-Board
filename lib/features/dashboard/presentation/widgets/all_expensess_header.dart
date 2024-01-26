import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_style.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOptions(),
      ],
    );
  }
}
