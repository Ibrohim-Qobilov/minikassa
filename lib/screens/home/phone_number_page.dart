import 'package:flutter/material.dart';
import 'package:minikassa/core/contants/images.dart';
import 'package:minikassa/screens/home/sms_page.dart';
import 'package:minikassa/widgets/button_widget.dart';
import 'package:minikassa/widgets/sizedbox_widgets.dart';
import 'package:minikassa/widgets/text_form_widget.dart';
import 'package:minikassa/widgets/text_widget.dart';

class PhoneNumberPage extends StatefulWidget {
  PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  TextEditingController phoneController = TextEditingController();

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
          children: [
            SizedBoxWidget(
              height: 130.0,
            ),
            TextWidget(
              text: 'Чтобы Вас узнать, мне нужен\nномер Вашего телефона',
              size: 20.0,
            ),
            SizedBoxWidget(
              height: 140.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: TextWidget(text: 'Введите ваш номер'),
                  ),
                  TextFormWidget(
                      suffixIcon: const Icon(Icons.call),
                      controller: phoneController,
                      prefix: TextWidget(text: '+998')),
                ],
              ),
            ),
            SizedBoxWidget(
              height: 40.0,
            ),
            ButtonWidget(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SmsPage(
                        
                      ),
                    ),
                  );
                },
                text: "Далее")
          ],
        ),
      ),
    );
  }
}
