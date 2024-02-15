import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class app_bar extends StatelessWidget {
  const app_bar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[200],
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: MyText(
        text: text,
        fontType: FontType.small,
        customcolor: Colors.black,
        customweight: FontWeight.bold,
      ),
    );
  }
}
