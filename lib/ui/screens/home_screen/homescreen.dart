import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:ecommerce_app/ui/screens/home_screen/bottom_navigation_bar.dart';
import 'package:ecommerce_app/ui/screens/home_screen/categories.dart';
import 'package:ecommerce_app/ui/screens/home_screen/trending.dart';
import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: MyText(
            text: "Discover",
            fontType: FontType.big,
            customcolor: Colors.black,
            customweight: FontWeight.bold),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, color: Colors.black, size: 25),
          ),
        ],
      ),
      body: ListView(padding: EdgeInsets.all(10), children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          child: AnotherCarousel(
              borderRadius: true,
              boxFit: BoxFit.cover,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: const Duration(milliseconds: 1000),
              dotSize: 4.0,
              dotIncreasedColor: Colors.black,
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomCenter,
              dotVerticalPadding: 10.0,
              showIndicator: true,
              indicatorBgPadding: 7.0,
              images: [
                AssetImage('assets/banner_1.png'),
                AssetImage('assets/banner_2.png'),
                AssetImage('assets/banner_3.png'),
              ]),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
                text: "Categories",
                fontType: FontType.big,
                customcolor: Colors.black,
                customweight: FontWeight.bold),
            TextButton(
              onPressed: () {},
              child: MyText(
                  text: "VIEW All",
                  fontType: FontType.small,
                  customcolor: Colors.black,
                  customweight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Categories(text: "Chair", icons: Icons.chair),
            Categories(text: "Sofa", icons: Icons.chair),
            Categories(text: "Dinner", icons: Icons.table_bar_rounded),
            Categories(text: "Table", icons: Icons.table_chart_rounded),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              text: "Trendings",
              fontType: FontType.big,
              customweight: FontWeight.bold,
            ),
            TextButton(
              onPressed: () {},
              child: MyText(
                  text: "VIEW ALL",
                  fontType: FontType.small,
                  customweight: FontWeight.bold,
                  customcolor: Colors.black),
            ),
          ],
        ),
        SizedBox(height: 5),
        trending(
            text: "Armchair Konna Green",
            name: 'assets/banner_1.png',
            price: "\$ 200"),
      ]),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
