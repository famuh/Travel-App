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
  dataString({Key? key, required this.tittleData, required this.textData})
      : super(key: key);

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
    return Text(
      tittleText,
      style: TextStyle(color: Color.fromRGBO(212, 85, 0, 1)),
    );
  }
}

//notificatons
//icon button atas
class iconButtonNotifications extends StatelessWidget {
  String buttonTitle;
  iconButtonNotifications({Key? key, required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print('Promo clicked');
      }),
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1595152772835-219674b2a8a6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')
              // backgroundImage: AssetImage('assets/promo.png'),
            ),
            SizedBox(height: 3,),
            Text(
              buttonTitle,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
