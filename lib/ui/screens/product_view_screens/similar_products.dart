import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class similar_products extends StatefulWidget {
  const similar_products({super.key});

  @override
  State<similar_products> createState() => _similar_productsState();
}

class _similar_productsState extends State<similar_products> {
  List<String> catimages = [
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png",
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png",
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png",
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png",
  ];

  List products = [
    "Sofa",
    "Chair",
    "Table",
    "Bed",
    "Dressing Table",
    "Sofa",
    "Chair",
    "Table",
    "Bed",
    "Dressing Table",
    "Sofa",
    "Chair",
  ];

  List price = [
    "Rs. 2000",
    "Rs. 3000",
    "Rs. 4000",
    "Rs. 5000",
    "Rs. 6000",
    "Rs. 7000",
    "Rs. 8000",
    "Rs. 9000",
    "Rs. 10000",
    "Rs. 11000",
    "Rs. 12000",
    "Rs. 13000",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(catimages.length, (index) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 150,
              height: 175,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      catimages[index],
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: products[index],
                    fontType: FontType.medium,
                    customweight: FontWeight.bold,
                    customcolor: Color.fromARGB(255, 39, 38, 38),
                  ),
                  const SizedBox(height: 5),
                  MyText(
                    text: price[index],
                    fontType: FontType.small,
                    customcolor: Colors.brown,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
