// features/home/widgets/top_bar.dart
import 'package:ecommerce_assignment/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    int topIconIndex = 0;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      // color: Colors.blue.shade800,
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _topIcon(
            "Flipkart",
            AppAssets.flipKart,
            imageHeight: 18,
            color: Colors.yellow.shade600,
          ),
          _topIcon("Minutes", AppAssets.minutes),
          _topIcon("Travel", AppAssets.travel),
          _topIcon("Grocery", AppAssets.grocery),
        ],
      ),
    );
  }

  Widget _topIcon(
    String title,
    String image, {
    double? imageHeight,
    Color color = Colors.white,
  }) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SvgPicture.asset(image, height: imageHeight ?? 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
