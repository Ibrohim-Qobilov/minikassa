import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  String text;
  var colorText;
  var colorContainer;
  ContainerView({
    required this.text,
    this.colorContainer,
    this.colorText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorContainer,
      ),
      child: Text(
        text,
        style: TextStyle(color: colorText),
      ),
    );
  }
}