import 'package:flutter/material.dart';

class InteriorDesignScreen extends StatefulWidget {
  InteriorDesignScreen({Key? key}) : super(key: key);

  @override
  State<InteriorDesignScreen> createState() => InteriorDesignScreenState();
}

class InteriorDesignScreenState extends State<InteriorDesignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0),
      extendBodyBehindAppBar: true,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Stack(
          children: [
            //images
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage('images/minimalist-living-room.png'),
                      fit: BoxFit.cover)),
            ),

            //details
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
