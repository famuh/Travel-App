import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/get_started_screen.dart';
import 'package:flutter_application/Locature/interior_design_screen.dart';
import 'package:flutter_application/Locature/notifications_screen.dart';
import 'package:flutter_application/Locature/order_details_screen.dart';
import 'package:flutter_application/Locature/register_screen.dart';
import 'package:flutter_application/Locature/tes.dart';

import 'screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InteriorDesignScreen(),
    );
  }
}