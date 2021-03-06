import 'package:flutter/material.dart';
import 'package:flutter_application/Locature/component.dart';

class orderDetailsScreen extends StatefulWidget {
  orderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<orderDetailsScreen> createState() => _orderDetailsScreenState();
}

class _orderDetailsScreenState extends State<orderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Order Details',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //jumlah item
              titleString(titleText: 'Items : 3'),
              //item
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    //foto
                    Stack(
                      children: [
                        //untuk foto item
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(3, 3))
                              ],
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1615529182904-14819c35db37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'))),
                        ),

                        //jumlah item
                        Positioned(
                            right: 0,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(width: 20),
                    //section 2
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //merk dagang
                        Row(children: [
                          Icon(
                            Icons.shopping_bag,
                            size: 15,
                            color: Color.fromRGBO(212, 85, 0, 1),
                          ),
                          Text(
                            'Holy Furniture',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(212, 85, 0, 1),
                            ),
                          )
                        ]),
                        SizedBox(
                          height: 3,
                        ),

                        //nama barang
                        Text('Modern Chair',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600)),
                        SizedBox(
                          height: 3,
                        ),

                        //keterangan barang
                        Text(
                          'Light Grey  .   Leather',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                    Spacer(),
                    //harga
                    Text(
                      'Rp 690.000',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Divider(),

              //Shopping Address
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titleString(titleText: 'Shopping Address'),
                      TextButton(
                          onPressed: () {},
                          child: orangeText(tittleText: 'Change'))
                    ],
                  ),
                  Column(
                    children: [
                      dataString(tittleData: 'Name', textData: 'Cleopatra S.'),
                      dataString(tittleData: 'Street', textData: 'Asia 77'),
                      dataString(
                          tittleData: 'Phone', textData: '(+62)821 6940 7777'),
                    ],
                  )
                ],
              ),
              Divider(),

              //Payment
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      titleString(titleText: 'Payment'),
                      TextButton(
                          onPressed: () {},
                          child: orangeText(tittleText: 'Change'))
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.money,
                        color: Colors.green,
                      ),
                      Text(
                        'Cash',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
              Divider(),

              //Order Summary
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleString(titleText: 'Order Summary'),
                  dataString(tittleData: 'Subtotal', textData: 'Rp 690.000'),
                  dataString(tittleData: 'Delivery', textData: 'Rp 50.000'),
                  dataString(tittleData: 'Total', textData: 'Rp 470.000'),
                ],
              ),
              Divider(),

              //Voucher
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  titleString(titleText: 'Voucher'),
                  TextButton(onPressed: (){}, child: orangeText(tittleText: 'Use Voucher >'))
                ],
              ),
              Divider(),
            
              //bottom
              Spacer(),
              Container(
                padding: EdgeInsets.zero,
                width: MediaQuery.of(context).size.width,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: ListTile(
                    title: Text('Total Payment'),
                    subtitle: Text('Rp 740.000'),
                    trailing: ElevatedButton(
                      onPressed: (){},
                      child: Text('Place Order'),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(212, 85, 0, 1),
                        padding: EdgeInsets.all(20)
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
       
        );
  }
}
