import 'package:flutter/material.dart';
import 'package:minikassa/core/contants/colors.dart';

class ButtonWidget extends StatelessWidget {
  VoidCallback onPressed;
  String text;
   ButtonWidget({
     required this.onPressed,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorsList.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            fixedSize: const Size(180.0, 50.0)),
        onPressed: onPressed,
        child: const Text("Войти"));
  }
}