import 'package:flutter/material.dart';

import 'package:minikassa/core/contants/colors.dart';
import 'package:minikassa/core/contants/images.dart';
import 'package:minikassa/screens/home/phone_number_page.dart';
import 'package:minikassa/widgets/button_widget.dart';
import 'package:minikassa/widgets/container_view.dart';
import 'package:minikassa/widgets/text_widget.dart';

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
                  TextWidget(
                    text:
                        "Добро пожаловать в приложение\nпо учету финансовых и складских\nопераций Minikassa",
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>  PhoneNumberPage(),
                        ),
                      );
                    },
                    text: 'Войти',
                  )
                ],
              )
            ],
          )),
    );
  }
}
