import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class filter_screen extends StatefulWidget {
  const filter_screen({super.key});

  @override
  State<filter_screen> createState() => _filter_screenState();
}

class _filter_screenState extends State<filter_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          elevation: 0,
          title: MyText(
              text: "Filter",
              fontType: FontType.big,
              customcolor: Colors.black,
              customweight: FontWeight.bold),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.cancel_outlined, color: Colors.black, size: 25),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Row(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                      text: "Sort By",
                      fontType: FontType.medium,
                      customcolor: Colors.black,
                      customweight: FontWeight.bold),
                  SizedBox(height: 5),
                  MyText(
                      text: "Recommended",
                      fontType: FontType.small,
                      customcolor: Colors.black,
                      customweight: FontWeight.bold),
                ],
              )
              
            ]),
          ),
        )));
  }
}
