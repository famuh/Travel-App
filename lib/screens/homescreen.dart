import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
                child: TabBar(
                    labelPadding: EdgeInsets.symmetric(horizontal: 14.4),
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 14.4),
                    isScrollable: true,
                    labelColor: Color(0xFF0000000),
                    unselectedLabelColor: Color(0xFF8a8a8a),
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    tabs: [
                      Tab(child: Container(child: Text('Recommend'))),
                      Tab(child: Container(child: Text('Popular'))),
                      Tab(child: Container(child: Text('New Destination'))),
                      Tab(child: Container(child: Text('Hidden Gems'))),
                    ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(20),
              height: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1469474968028-56623f02e42e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80'))),
            )
          ],
        ),
      )),
    );
  }
}
