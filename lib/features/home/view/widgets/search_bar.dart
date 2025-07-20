// features/home/widgets/search_bar.dart
import 'package:ecommerce_assignment/core/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for Products...',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),

                // ✅ Blue border in focused state
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue, width: 1.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: SvgPicture.asset(
                    AppAssets.search,
                    color: Colors.blue,
                    height: 20,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    AppAssets.camera,
                    color: Colors.grey,
                    height: 24,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20), // spacing from edge
          child: SvgPicture.asset(
            AppAssets.qrScanner,
            color: Colors.grey,
            height: 24,
          ),
        ),
      ],
    );
  }
}
