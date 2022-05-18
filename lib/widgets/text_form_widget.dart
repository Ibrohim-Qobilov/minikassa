import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  String? text;
  Widget suffixIcon;
  TextEditingController? controller;
  Widget? prefix;
  TextFormWidget({
    this.text,
     this.prefix,
    Key? key,
   required this.suffixIcon,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: controller,
      decoration: InputDecoration(
        hintText: text,
        suffixIcon: suffixIcon,
        prefix: prefix,
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}