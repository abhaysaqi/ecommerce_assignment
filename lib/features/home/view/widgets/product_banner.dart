// features/home/widgets/product_banner.dart
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductBanner extends StatefulWidget {
  const ProductBanner({super.key});

  @override
  State<ProductBanner> createState() => _ProductBannerState();
}

class _ProductBannerState extends State<ProductBanner> {
  int _current = 0;

  final List<String> imageUrls = [
    'https://rukminim2.flixcart.com/fk-p-flap/960/160/image/556cabb542d46367.jpeg?q=60',
    'https://rukminim1.flixcart.com/fk-p-flap/960/460/image/6746c9bb74e557a2.jpg?q=60',
    'https://rukminim1.flixcart.com/fk-p-flap/960/460/image/1f727458510ddef1.jpeg?q=60',
    'https://rukminim1.flixcart.com/fk-p-flap/960/460/image/e8ad73cc830116d9.jpeg?q=60',
    'https://rukminim1.flixcart.com/fk-p-flap/960/460/image/8ecde2c830c72997.jpeg?q=60',
    'https://rukminim1.flixcart.com/fk-p-flap/960/460/image/28d497fd0104e151.jpeg?q=60'

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          CarouselSlider(
            items: imageUrls.map((url) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  url,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 140,
              autoPlay: true,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(imageUrls.length, (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                width: index == _current ? 40 : 15,
                height: 6,
                decoration: BoxDecoration(
                  color: index == _current
                      ? Colors.black
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(3),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
