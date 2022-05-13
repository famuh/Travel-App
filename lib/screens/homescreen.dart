import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            //custom navigation drawer and search btn
            Container(
              height: 57.6,
              margin: EdgeInsets.fromLTRB(28.8, 28.8, 28.8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //custom navigation drawer and search button
                  Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color.fromARGB(255, 226, 226, 226),
                      ),
                      child: Icon(Icons.list)),

                  Container(
                      height: 57.6,
                      width: 57.6,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Color.fromARGB(255, 226, 226, 226),
                      ),
                      child: Icon(Icons.search)),
                ],
              ),
            ),

            //text widget for title
            Padding(
                padding: EdgeInsets.only(top: 48, left: 28.8),
                child: Text('Explore\nThe Nature',
                    style: GoogleFonts.playfairDisplay(
                        //playfair itu nama font
                        fontSize: 45.6,
                        fontWeight: FontWeight.w700))),

            //custom tab  bar with custom indicator
            Container(
              height: 30,
              margin: EdgeInsets.only(top: 28.8, left: 14.4),
              child: DefaultTabController(
                length: 4,
                child: TabBar(labelPadding: EdgeInsets.symmetric(horizontal: 14.4),tabs: [
                  Tab(
                    child: Container(child: Text('Recommend'))),
                  Tab(
                    child: Container(child: Text('Popular'))),
                  Tab(
                    child: Container(child: Text('New Destination'))),
                  Tab(
                    child: Container(child: Text('Hidden Gems'))),
                ]),
              ),
            )
          ],
        ),
      )),
    );
  }
}
