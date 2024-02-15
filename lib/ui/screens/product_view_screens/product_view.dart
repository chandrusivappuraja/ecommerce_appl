import 'package:ecommerce_app/ui/screens/product_view_screens/similar_products.dart';
import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class product_view_screen extends StatefulWidget {
  const product_view_screen({super.key});

  @override
  State<product_view_screen> createState() => __product_view_screenStateState();
}

class __product_view_screenStateState extends State<product_view_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset('assets/banner_1.png', fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Casey 1 seater Manual Recliner ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Rs. 2000",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          glowRadius: 2,
                          glowColor: Colors.amber,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20.0,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Text(
                      "Colors",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The Casey 1 seater Manual Recliner is a modern and stylish recliner that is designed to provide you with the best comfort.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                      text: "Categories",
                                      fontType: FontType.small,
                                      customcolor: Colors.black,
                                      customweight: FontWeight.bold,
                                    ),
                                    MyText(
                                      text: ":",
                                      fontType: FontType.small,
                                      customcolor: Colors.black,
                                      customweight: FontWeight.bold,
                                    ),
                                  ]),
                            ),
                            SizedBox(width: 25),
                            MyText(
                              text: "Furniture,Accessories",
                              fontType: FontType.small,
                              customcolor: Colors.black,
                              customweight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                      text: "Tags",
                                      fontType: FontType.small,
                                      customcolor: Colors.black,
                                      customweight: FontWeight.bold,
                                    ),
                                    MyText(
                                      text: ":",
                                      fontType: FontType.small,
                                      customcolor: Colors.black,
                                      customweight: FontWeight.bold,
                                    ),
                                  ]),
                            ),
                            SizedBox(width: 25),
                            MyText(
                              text: "#Furniture,#Chair,#Table",
                              fontType: FontType.small,
                              customcolor: Colors.black,
                              customweight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      child: Row(children: [
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        MyText(
                          text: "Composition and Care",
                          fontType: FontType.small,
                          customcolor: Colors.black,
                          customweight: FontWeight.bold,
                        ),
                      ]),
                    ),
                    SizedBox(height: 10),
                    Container(
                      child: Row(children: [
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                          size: 15,
                        ),
                        SizedBox(width: 10),
                        MyText(
                          text: "Shipping and Return",
                          fontType: FontType.small,
                          customcolor: Colors.black,
                          customweight: FontWeight.bold,
                        ),
                      ]),
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 10),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: "Reviews",
                            fontType: FontType.medium,
                            customcolor: Colors.black,
                            customweight: FontWeight.bold,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              MyText(
                                text: "248 Reviews",
                                fontType: FontType.small,
                                customcolor: Colors.black,
                              ),
                              MyText(
                                  text: "4.8 Out of 5.0",
                                  fontType: FontType.small,
                                  customcolor: Colors.black,
                                  customweight: FontWeight.bold),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Divider(),
                    SizedBox(height: 15),
                    MyText(
                      text: "Similar Products",
                      fontType: FontType.medium,
                      customcolor: Colors.black,
                      customweight: FontWeight.bold,
                    ),
                    SizedBox(height: 15),
                    similar_products(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
