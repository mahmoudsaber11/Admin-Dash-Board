import 'package:flutter/material.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/custom_drawer.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: CustomDrawer())],
    );
  }
}
