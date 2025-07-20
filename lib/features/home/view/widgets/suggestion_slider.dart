// features/home/widgets/suggestion_slider.dart
import 'package:flutter/material.dart';

class SuggestionSlider extends StatelessWidget {
  const SuggestionSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {
        'title': 'Mobile Cables',
        'img':
            'https://images-eu.ssl-images-amazon.com/images/G/31/img22/WLA/2023/MSOREFRESHDESKTOP/D87165616_IN_WLA_BAU_MSO_REFRESH-desktop-version_PC_QuadCard_186X116_2X2._SY116_CB602731451_.jpg',
      },
      {
        'title': 'Mobiles',
        'img':
            'https://rukminim1.flixcart.com/fk-p-flap/96/96/image/ac8ae38a7d93283b.jpg?q=60',
      },
      {
        'title': 'Laptops',
        'img':
            'https://rukminim1.flixcart.com/fk-p-flap/126/126/image/11425150b071f19d.jpg?q=60',
      },
      {
        'title': 'Fans',
        'img':
            'https://rukminim1.flixcart.com/image/316/352/xif0q/fan/t/v/e/surebreeze-sea-sapphira-51-1-ceiling-fan-1200-crompton-original-imagmgw9gtjmrgpg.jpeg?q=60&crop=false',
      },
    ];

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "umang, still looking for these?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return CategoryCard(
                  imageUrl: items[index]['img']!,
                  title: items[index]['title']!,
                );
              },
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CategoryCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: Colors.blue.shade400,
              child: Image.network(
                imageUrl,
                height: 80,
                width: 90,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 11),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

