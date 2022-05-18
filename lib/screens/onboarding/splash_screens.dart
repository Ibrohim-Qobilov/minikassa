import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minikassa/core/contants/images.dart';
import 'package:minikassa/screens/onboarding/onboarding_second.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => OnBorandingSecondPAge()),
          (route) => false);
    });
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(ImageList.backround),
          ),
        ),
        child: SizedBox(
            height: 200.0, width: 200, child: Image.asset(ImageList.logo)),
      ),
    );
  }
}
