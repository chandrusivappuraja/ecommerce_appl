
import 'package:ecommerce_app/ui/widgets/my_text_widget.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatelessWidget {
  const Mybutton({super.key, required this.text, required this.onPressed,});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return                 Container(
                  margin: EdgeInsets.only(left: 35, right: 35),
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => onPressed(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: MyText(
                      text: text,
                      fontType: FontType.medium,
                      customcolor: Colors.white,
                    ),
                  ),
                );
  }
}