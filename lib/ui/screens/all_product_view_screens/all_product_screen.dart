import 'package:ecommerce_app/ui/screens/product_view_screens/product_view.dart';
import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class prodects_screen extends StatelessWidget {
  prodects_screen({
    super.key,
  });

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
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Products",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Colors.black, size: 25),
              color: Colors.black,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GridView.builder(
            itemCount: catimages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => product_view_screen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child:
                              Image.asset(catimages[index], fit: BoxFit.cover)),
                      MyText(
                        text: products[index],
                        fontType: FontType.small,
                        customcolor: Colors.black,
                        customweight: FontWeight.bold,
                      ),
                      MyText(
                        text: price[index],
                        fontType: FontType.small,
                        customcolor: Colors.black,
                        customweight: FontWeight.bold,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
