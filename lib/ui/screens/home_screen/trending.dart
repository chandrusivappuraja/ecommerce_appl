import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class trending extends StatelessWidget {
  trending({
    super.key,
    required this.text,
    required this.name,
    required this.price,
  });

  final String text;
  final String price;
  final String name;

  List<String> catimages = [
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
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  const SizedBox(height: 5),
                  Image.asset(
                    name,
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: text,
                          fontType: FontType.medium,
                          customweight: FontWeight.bold,
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            MyText(
                              text: price,
                              fontType: FontType.medium,
                              customweight: FontWeight.bold,
                            ),
                            SizedBox(width: 100),
                            Container(
                              height: 30,
                              width: 90,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                                child: MyText(
                                  text: "SHOP",
                                  fontType: FontType.small,
                                  customcolor: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
