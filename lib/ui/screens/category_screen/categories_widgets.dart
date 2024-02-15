import 'package:ecommerce_app/ui/screens/all_product_view_screens/all_product_screen.dart';
import 'package:ecommerce_app/ui/screens/product_view_screens/product_view.dart';
import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class category_widgets extends StatelessWidget {
  category_widgets({
    super.key,
    required this.text,
    required this.name,
    required this.no_of_items,
  });

  final String text;
  final String no_of_items;
  final String name;

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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < catimages.length; i++)
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(7.0),
              child: Row(
                children: [
                  const SizedBox(height: 5),
                  Image.asset(
                    catimages[i],
                    height: 60,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: text,
                        fontType: FontType.medium,
                        customweight: FontWeight.bold,
                      ),
                      const SizedBox(height: 5),
                      MyText(
                        text: no_of_items,
                        fontType: FontType.medium,
                        customweight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 115),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => prodects_screen()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
