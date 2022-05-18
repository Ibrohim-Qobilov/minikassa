import 'package:flutter/material.dart';

class SizedBoxWidget extends StatelessWidget {
  double? width;
  double? height;
   SizedBoxWidget({
     this.width,
     this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:height,width: width, );
  }
}