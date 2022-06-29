import 'package:flutter/material.dart';

class getStartedScreen extends StatefulWidget {
  getStartedScreen({Key? key}) : super(key: key);

  @override
  State<getStartedScreen> createState() => _getStartedScreenState();
}

class _getStartedScreenState extends State<getStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            //segmen 1
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.grey,
              child: Image(image: AssetImage('images/gets.png', ), fit: BoxFit.fill,),
            ),

            //segmen 2
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              color: Colors.white,
            ),
          ],
        ),
      )),
    );
  }
}