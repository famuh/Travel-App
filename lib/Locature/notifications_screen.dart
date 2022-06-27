import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/component.dart';

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
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Notifications', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              //notif icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  iconButtonNotifications(buttonTitle: 'Promos'),
                  iconButtonNotifications(buttonTitle: 'Order'),
                  iconButtonNotifications(buttonTitle: 'Delivery'),
                  iconButtonNotifications(buttonTitle: 'Account'),
                ],
              )
            ],
          )),
    );
  }
}
