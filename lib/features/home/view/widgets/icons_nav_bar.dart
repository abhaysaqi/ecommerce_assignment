// features/home/widgets/icon_navbar.dart
import 'package:ecommerce_assignment/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconNavBar extends StatelessWidget {
  const IconNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final itemTitles = [
      "Beauty",
      "Home",
      "Food & He...",
      "Toys, baby...",
      "Auto Acce...",
      "Sports",
    ];
    final itemIcons = [
      AppAssets.beauty,
      AppAssets.home,
      AppAssets.foodAndHealth,
      AppAssets.toys,
      AppAssets.autoAccessories,
      AppAssets.sports,
    ];

    return Container(
      height: 60,decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200,width: 2))),
      child: Center(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          itemCount: itemTitles.length,
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemBuilder: (_, index) => SizedBox(
            width: 45,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(itemIcons[index], height: 20),
                Text(
                  itemTitles[index],
                  style: const TextStyle(fontSize: 11),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
