import 'package:flutter/material.dart';

class ClothsCardSlider extends StatelessWidget {
  const ClothsCardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final clothList = [
      "https://rukminim1.flixcart.com/fk-p-flap/2040/3080/image/9977e3a242491862.jpg?q=60",
      "https://rukminim1.flixcart.com/fk-p-flap/2040/3080/image/0208f82e3030b6f8.png?q=60",
      "https://rukminim1.flixcart.com/fk-p-flap/2040/3080/image/8d291dee8957a5fb.jpg?q=60",
      "https://rukminim1.flixcart.com/fk-p-flap/440/580/image/22afe09805654b0e.jpeg?q=60",
      "https://rukminim1.flixcart.com/fk-p-flap/2040/3080/image/8d291dee8957a5fb.jpg?q=60",
    ];
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 160,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: clothList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(clothList[index],fit: BoxFit.fill,height: 160,width: 110,),
                  ),
                  Positioned(right: 8, top: 8, child: adButton()),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget adButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        color: Colors.grey.shade500,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "AD",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
          color: Colors.white,
        ),
      ),
    );
  }
}
