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
              child: Image(image: AssetImage('images/locature1.png'))),

            //text field
            registerTextField(icon: Icons.person, hintTitle: 'Full Name'),
            registerTextField(icon: Icons.mail, hintTitle: 'Email'),
            registerTextField(icon: Icons.lock, hintTitle: 'Password'),
            registerTextField(icon: Icons.lock, hintTitle: 'Confirm Password'),

            //sign up button
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: ElevatedButton(
                  onPressed: () {
                    print('Sign up !');
                  },
                  child: Text(
                    'Sign Up',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(212, 127, 0, 1),
                      fixedSize: Size(250, 40))),
            ),

            //or connect with
            Column(
              children: [
                Text('or connect with',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Divider(
                  color: Colors.transparent,
                ),
                Container(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                          onTap: () {
                            print('Login via Facebook');
                          },
                          child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/register/facebook.png'))),
                      GestureDetector(
                        onTap: () {
                          print('Login via Google');
                        },
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/register/google.png'))),
                      GestureDetector(
                        onTap: () {
                          print('Login via Twitter');
                        },
                        child: CircleAvatar(
                            backgroundImage:
                                AssetImage('images/register/twitter.png'))),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
