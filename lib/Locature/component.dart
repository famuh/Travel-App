import 'package:flutter/material.dart';

class titleString extends StatelessWidget {
  String titleText;
  titleString({Key? key, required this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(titleText,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600));
  }
}

class dataString extends StatelessWidget {
  String tittleData;
  String textData;
  dataString({Key? key, required this.tittleData, required this.textData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 3, 8, 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(tittleData, style: TextStyle(fontSize: 14, color: Colors.grey)),
          Text(textData, style: TextStyle(fontSize: 14, color: Colors.grey))
        ],
      ),
    );
  }
}

class orangeText extends StatelessWidget {
  String tittleText;
  orangeText({Key? key, required this.tittleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(tittleText, style: TextStyle(color: Color.fromRGBO(212, 85, 0, 1)),);
  }
}