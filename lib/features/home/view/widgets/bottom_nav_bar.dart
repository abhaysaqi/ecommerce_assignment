import 'package:ecommerce_assignment/core/constants/assets.dart';
import 'package:ecommerce_assignment/core/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.white,
      items: const [
        BottomNavigationBarItem(
          icon: CustomIcon(assetName: AppAssets.bottomHome, size: 22),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(assetName: AppAssets.bottomPlay),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(assetName: AppAssets.bottomCategories),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(assetName: AppAssets.bottomAccount),
          label: 'Account',
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(assetName: AppAssets.bottomCart),
          label: 'Cart',
        ),
      ],
    );
  }
}
