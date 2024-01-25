import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/core/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          UserInfoListTile(
              image: Assets.avatar3,
              title: "Lekan Okeowo",
              subTitle: "demo@gmail.com"),
          SizedBox(
            height: 8,
          ),
          DrawerItemsListView(),
        ],
      ),
    );
  }
}
