import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  double? size;
  String text;
  TextWidget({
    this.size,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(fontSize: size),);
  }
}