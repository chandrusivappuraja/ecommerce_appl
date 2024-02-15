import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class search_categories extends StatelessWidget {
   search_categories({super.key});



    List<String> products = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return             Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                        color: const Color.fromARGB(255, 47, 45, 45),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        products[index],
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 47, 45, 45),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
  }
}
