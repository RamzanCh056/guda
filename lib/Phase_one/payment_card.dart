import 'package:flutter/material.dart';

import 'mytrip_page.dart';
import 'otp_varification.dart';
class Payment extends StatelessWidget {
  const Payment({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  PaymentMethod(),
      
    );
  }
}

 class PaymentMethod extends StatefulWidget {
   const PaymentMethod({ Key? key }) : super(key: key);
 
   @override
   _PaymentMethodState createState() => _PaymentMethodState();
 }
 
 class _PaymentMethodState extends State<PaymentMethod> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => varification()));
                      },
                    ),
                    Text('Add Money',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              SizedBox(height: 65.0),
              Container(
                //height: 600,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(65.0)),
                ),
                child: ListView(
                  primary: false,
                  padding: EdgeInsets.only(left: 25.0, right: 20.0),
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 80.0),
                        child: Container(
                            color: Colors.white,
                            height: 900,
                            width: 220.0,
                            // height: MediaQuery.of(context).size.height - 1100.0,
                            child: ListView(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10, right: 120),
                                      child:   Text("Card Number", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    ),
                                    SizedBox(height: 20,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20,right: 30),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          // labelText: "Account Number",
                                            hintText: "Enter card Number",
                                            contentPadding:
                                            EdgeInsets.symmetric(horizontal: 42,vertical: 10),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(28),
                                              borderSide: BorderSide(color: Colors.grey),
                                              gapPadding: 10,
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(28),
                                              borderSide: BorderSide(color: Colors.grey),
                                            )

                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 34),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 100),
                                            child:   Text("Expiry Month", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 16,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 60),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // labelText: "Account Number",
                                                 // hintText: "Enter Expiry month ",
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 42,vertical: 10),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(28),
                                                    borderSide: BorderSide(color: Colors.grey),
                                                    gapPadding: 10,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(28),
                                                    borderSide: BorderSide(color: Colors.grey),
                                                  )

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 16,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 34),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 5, right: 100),
                                            child:   Text("Expiry Year", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                          ),
                                          SizedBox(height: 16,),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 5,right: 60),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                // labelText: "Account Number",
                                                //  hintText: "Enter year ",
                                                  contentPadding:
                                                  EdgeInsets.symmetric(horizontal: 42,vertical: 10),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(28),
                                                    borderSide: BorderSide(color: Colors.grey),
                                                    gapPadding: 10,
                                                  ),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(28),
                                                    borderSide: BorderSide(color: Colors.grey),
                                                  )

                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  SizedBox(height: 16,),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 5, right: 130),
                                        child:   Text("Enter CVV", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                      ),
                                      SizedBox(height: 20,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 40),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            // labelText: "Account Number",
                                              hintText: "Enter CVV here",
                                              contentPadding:
                                              EdgeInsets.symmetric(horizontal: 52,vertical: 10),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(28),
                                                borderSide: BorderSide(color: Colors.grey),
                                                gapPadding: 10,
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(28),
                                                borderSide: BorderSide(color: Colors.grey),
                                              )

                                          ),
                                        ),
                                      ),
                                    ],
                                  ),




                                    SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 40,right: 50),
                                      child: MaterialButton(
                                        color: Colors.cyanAccent,
                                        minWidth: double.infinity,
                                        height: 60,
                                        onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Trip()));
                                        },
                                        shape: RoundedRectangleBorder(
                                          // side: BorderSide(
                                          //   color: Colors.white,
                                          // ),
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Text(
                                          "ADD money",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,color: Colors.black,
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]))),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(top: 100, left: 60, right: 60),
              height: 170,
             // width: 500,
              width: double.infinity,
              child: Card(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.asset('images/visacard.jpg',fit: BoxFit.fill,)) ,
               // color: Colors.cyanAccent,
                //shadowColor: Colors.black,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                elevation: 8,

              )),
        ]),
      ),
    );
   }
 }


















