import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/core/widgets/user_info_list_tile.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: UserInfoListTile(
                  image: Assets.avatar3,
                  title: "Lekan Okeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", image: Assets.settings)),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout account", image: Assets.logout)),
                SizedBox(
                  height: 46,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
