import 'package:flutter/material.dart';
import 'package:minikassa/core/contants/images.dart';
import 'package:minikassa/screens/home/magazin_page.dart';
import 'package:minikassa/widgets/button_widget.dart';
import 'package:minikassa/widgets/sizedbox_widgets.dart';
import 'package:minikassa/widgets/text_form_widget.dart';
import 'package:minikassa/widgets/text_widget.dart';

class ProfilePage extends StatefulWidget {
  dynamic? phone;

  ProfilePage({this.phone, Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController smsController = TextEditingController();
  dynamic phone;
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
              text: 'Давайте познакомимся\nпоближе. Как Вас зовут?',
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
                    child: TextWidget(text: 'Ваше имя'),
                  ),
                  TextFormWidget(
                    suffixIcon: const Icon(Icons.person),
                    controller: smsController,
                  ),
                ],
              ),
            ),
            SizedBoxWidget(
              height: 40.0,
            ),
            ButtonWidget(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MagazinPage()));
                },
                text: "Далее")
          ],
        ),
      ),
    );
  }
}
