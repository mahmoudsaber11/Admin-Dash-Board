import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/functions/app_images.dart';
import 'package:responsive_dash_board/features/dashboard/presentation/widgets/drawer_item.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: "Dashboard", image: Assets.dashboard),
    const DrawerItemModel(title: "My Transaction", image: Assets.myTransctions),
    const DrawerItemModel(title: "Statistics", image: Assets.statistics),
    const DrawerItemModel(title: "Wallet Account", image: Assets.walletAccount),
    const DrawerItemModel(title: "My Investments", image: Assets.myInvestments),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: activeIndex == index
                    ? Colors.blue.withOpacity(0.2) // لون مختلف عند التحديد
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: activeIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
