import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/component.dart';

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
      body:
       Container(
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
                    image: DecorationImage(
                        image: AssetImage('images/minimalist-living-room.png'),
                        fit: BoxFit.cover)),
              ),

              //details
              Positioned(
                  bottom: 0,
                  child: Stack(
                    children: [
                      //detail interior
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: SafeArea(
                            child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //owner
                              Text('From @livingroom',
                                  style: TextStyle(color: Colors.black54)),

                              //title interior design
                              titleInteriorDesign(
                                  title: 'Minimalist Livingroom'),

                              //description
                              Container(
                                margin: EdgeInsets.only(top: 20),
                                padding: EdgeInsets.symmetric(),
                                height: 100,
                                child: Text(
                                    'The function of the formal living room is to receive the arrival of colleagues and co-workers who come to visit. Good for discussing office problems or personal and family problems. The arrangement of a formal living room is usually in a circular or opposite style.',
                                    style: TextStyle(color: Colors.black54)),
                              ),

                              //interior
                              titleInteriorDesign(title: 'Interior'),
                              SafeArea(
                                top: false,
                                      child: 
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                         
                                            
                                          ],
                                        ),
                                      ),
                                    )
                              ,
                              //more
                              titleInteriorDesign(title: 'More'),
                              SafeArea(
                                top: false,
                                      child: 
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                                            Container(width: 80,height: 80, color: Colors.blue,margin: EdgeInsets.symmetric(horizontal: 10),),
                         
                                            
                                          ],
                                        ),
                                      ),
                                    )
                              
                            ],
                          ),
                       
                          ),)
                          ),
                      ),
                    ],
                  )),

              //button
              Positioned(
                right: MediaQuery.of(context).size.width / 10,
                bottom: MediaQuery.of(context).size.height / 2.7,
                child: Container(
                  width: 100,
                  height: 45,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          primary: Color.fromRGBO(212, 85, 0, 1),
                          side: BorderSide(width: 3, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: const Text(
                        'Follow',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      )),
                ),
              ),
            ],
          )),
    );
  }
}
