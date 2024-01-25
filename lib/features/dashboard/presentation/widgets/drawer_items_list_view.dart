import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/drawer_item.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: Assets.dashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.myTransctions),
    DrawerItemModel(title: "Statistics", image: Assets.statistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.walletAccount),
    DrawerItemModel(title: "My Investments", image: Assets.myInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          DrawerItem(drawerItemModel: items[index]),
      itemCount: items.length,
    );
  }
}
