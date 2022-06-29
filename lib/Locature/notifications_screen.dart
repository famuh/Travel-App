import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/component.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notificationsScreen extends StatefulWidget {
  notificationsScreen({Key? key}) : super(key: key);

  @override
  State<notificationsScreen> createState() => _notificationsScreenState();
}

class _notificationsScreenState extends State<notificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //notif icons
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      iconButtonNotifications(
                          buttonTitle: 'Promos',
                          icon: FontAwesomeIcons.tag,
                          bgColor: Color.fromRGBO(18, 179, 154, 1)),
                      iconButtonNotifications(
                          buttonTitle: 'Order',
                          icon: FontAwesomeIcons.bagShopping,
                          bgColor: Color.fromRGBO(36, 155, 242, 1)),
                      iconButtonNotifications(
                          buttonTitle: 'Delivery',
                          icon: FontAwesomeIcons.truck,
                          bgColor: Color.fromRGBO(255, 118, 66, 1)),
                      iconButtonNotifications(
                          buttonTitle: 'Account',
                          icon: Icons.person,
                          bgColor: Color.fromRGBO(127, 70, 198, 1)),
                    ]),
              ),

              //sekmen selanjutnya
              notificationsCase(
                  bgColor: Color.fromRGBO(255, 118, 66, 1),
                  icon: FontAwesomeIcons.truck,
                  caseTitle: 'Order Arrived',
                  time: '12:35 PM',
                  caseContent: 'Order has been arrived'),
              notificationsCase(
                  bgColor: Color.fromRGBO(36, 155, 242, 1),
                  icon: FontAwesomeIcons.bagShopping,
                  caseTitle: 'Order Success',
                  time: 'Yesterday',
                  caseContent: 'Successful Order !'),
              notificationsCase(
                  bgColor: Color.fromRGBO(18, 179, 154, 1),
                  icon: FontAwesomeIcons.tag,
                  caseTitle: '20% discount on Tribu',
                  time: '25 March 2022',
                  caseContent:
                      'All the Tribu products available with 20% exclusive discount.'),
              notificationsCase(
                  bgColor: Color.fromRGBO(127, 70, 198, 1),
                  icon: Icons.person,
                  caseTitle: 'Address Updated',
                  time: '24 March 2022',
                  caseContent: 'Your address has been updated.'),

              notificationsCase(
                  bgColor: Color.fromRGBO(36, 155, 242, 1),
                  icon: FontAwesomeIcons.bagShopping,
                  orderID: '111',
                  caseTitle: 'Waiting for payment',
                  time: '23 March 2022',
                  caseContent: 'Order has been create. Please pay the bill.'),
            ],
          )),
    );
  }
}
