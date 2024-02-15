import 'package:ecommerce_app/ui/screens/category_screen/categories_widgets.dart';
import 'package:flutter/material.dart';

class category_screen extends StatelessWidget {
  const category_screen({super.key});

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
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(7.0),
          child: SingleChildScrollView(
            child: category_widgets(
                text: 'Dressing Table',
                name: 'assets/banner_1.png',
                no_of_items: '2140 items'),
          ),
        ));
  }
}
