import 'package:flutter/material.dart';

class titleString extends StatelessWidget {
  String titleText;
  titleString({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(titleText,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500));
  }
}
