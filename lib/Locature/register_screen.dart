import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class registerScreen extends StatefulWidget {
  registerScreen({Key? key}) : super(key: key);

  @override
  State<registerScreen> createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo Locature
            Container(
              width: 250,
              height: 80,
              child: Image(image: AssetImage('images/locature1.png')),
            ),

            //text field
            registerTextField(icon: Icons.person, hintTitle: 'Full Name'),
          ],
        ),
      ),
    );
  }
}
