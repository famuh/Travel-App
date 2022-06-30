import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  IconData icon;
  Color bgColor;
  iconButtonNotifications({
    Key? key,
    required this.buttonTitle,
    required this.icon,
    required this.bgColor,
  }) : super(key: key);

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
              radius: 25,
              backgroundColor: bgColor,
              child: FaIcon(
                icon,
                color: Colors.white,
                size: 24,
              ),
            ),
            SizedBox(
              height: 3,
            ),
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

//notifications data
class notificationsCase extends StatelessWidget {
  String caseTitle;
  String? time;
  String? orderID;
  String? caseContent;

  //icon
  Color bgColor;
  IconData icon;

  notificationsCase(
      {Key? key,
      required this.bgColor,
      required this.icon,
      this.orderID,
      required this.caseTitle,
      this.time,
      this.caseContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: bgColor),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: bgColor,
            child: FaIcon(
              icon,
              color: Colors.white,
              size: 14,
            ),
          ),
          title: ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              caseTitle,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(time!),
          ),
          subtitle: Text(caseContent!),
        ),
      ),
    );
  }
}

//register
class registerTextField extends StatelessWidget {
  IconData icon;
  String hintTitle;

  registerTextField({Key? key, required this.icon, required this.hintTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(icon),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width / 2,
            height: 35,
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintText: '  $hintTitle',
                fillColor: Colors.grey[200],
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

