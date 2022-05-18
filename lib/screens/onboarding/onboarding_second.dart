import 'package:flutter/material.dart';

import 'package:minikassa/core/contants/colors.dart';
import 'package:minikassa/core/contants/images.dart';
import 'package:minikassa/widgets/container_view.dart';

class OnBorandingSecondPAge extends StatelessWidget {
  const OnBorandingSecondPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerView(
                    text: 'Русский',
                    colorContainer: ColorsList.primary,
                    colorText: ColorsList.blackColor,
                  ),
                  ContainerView(
                    text: 'Ўзбекча',
                    colorContainer: ColorsList.secondColor,
                    colorText: ColorsList.primary,
                  ),
                  ContainerView(
                    text: 'O’zbekcha',
                    colorContainer: ColorsList.secondColor,
                    colorText: ColorsList.primary,
                  ),
                ],
              ),
              SizedBox(
                  height: 200.0,
                  width: 200,
                  child: Image.asset(ImageList.logo)),
              Column(
                children: [
                  const Text(
                      "Добро пожаловать в приложение\nпо учету финансовых и складских\nопераций Minikassa"),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: ColorsList.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          fixedSize: const Size(160.0, 40.0)),
                      onPressed: () {},
                      child: const Text("Войти"))
                ],
              )
            ],
          )),
    );
  }
}


