import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Phase_one/payment_card.dart';

import 'my_profile.dart';
class Mytrip extends StatelessWidget {
  const Mytrip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Trip(),
    );
  }
}
class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  _TripState createState() => _TripState();
}

class _TripState extends State<Trip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  PaymentMethod()));
                      },
                    ),
                    SizedBox(width: 16,),
                    Row(
                      children: [
                         Text("My Trips", style: TextStyle(fontSize: 30 ,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),

              ),
              Container(
              //  padding: EdgeInsets.only(top: 20),
                  margin: EdgeInsets.only(top: 35, left: 20, right: 20),
                  height: 220,
                  // width: 500,
                  width: double.infinity,
                  child: Card(
                   child: Column(

                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [

                           Padding(
                             padding: const EdgeInsets.all(14.0),
                             child: Text("24 Dec,2021",style: TextStyle(fontSize: 12 ,fontWeight: FontWeight.bold)),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(top: 20,right: 20),
                             child: CircleAvatar(
                               backgroundImage: AssetImage("images/profile.jpeg"),
                             ),
                           )
                         ],
                       ),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 30, left: 20),
                             child: Text("Pickup:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                           ),
                           Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 30,left: 20),
                             child: Text("Drop:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 10, right: 20),
                             child: Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                           ),
                         ],
                       ),
                       SizedBox(height: 10,),
                       Row(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(right: 30,left: 20),
                             child: Text("Ride:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 20, right: 20),
                             child: Text("Vehicle model name",style: TextStyle(fontSize: 16,color: Colors.grey),),
                           ),
                         ],
                       ),
                       Padding(
                         padding: const EdgeInsets.all(14),
                         child: Row(

                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                            Icon(Icons.access_time,color: Colors.green,),
                             Text("14:00-14:43" , style: TextStyle(color: Colors.green, fontSize: 16,fontWeight: FontWeight.bold),),
                             SizedBox(width: 8,),
                             Text("\$23 " , style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),)

                           ],
                         ),
                       ),

                     ],
                   ),
                    // color: Colors.cyanAccent,
                    //shadowColor: Colors.black,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    elevation: 8,

                  )),

              Container(
                //  padding: EdgeInsets.only(top: 20),
                  margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                  height: 225,
                  // width: 500,
                  width: double.infinity,
                  child: Card(
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text("20 Dec,2021",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 20),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/profile.jpeg"),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30, left: 20),
                              child: Text("Pickup:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30,left: 20),
                              child: Text("Drop:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 20),
                              child: Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30,left: 20),
                              child: Text("Ride:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Text("Vehicle model name",style: TextStyle(fontSize: 16,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.access_time,color: Colors.green,),
                              Text("10:00-11:13" , style: TextStyle(color: Colors.green, fontSize: 16,fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text("\$40 " , style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),)

                            ],
                          ),
                        ),

                      ],
                    ),
                    // color: Colors.cyanAccent,
                    //shadowColor: Colors.black,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    elevation: 8,

                  )),
              Container(
                //  padding: EdgeInsets.only(top: 20),
                  margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                  height: 225,
                  // width: 500,
                  width: double.infinity,
                  child: Card(
                    child: Column(

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text("20 Dec,2021",style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20,right: 20),
                              child: CircleAvatar(
                                backgroundImage: AssetImage("images/profile.jpeg"),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30, left: 20),
                              child: Text("Pickup:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30,left: 20),
                              child: Text("Drop:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16, right: 20),
                              child: Text("x location,y",style: TextStyle(fontSize: 16,color: Colors.grey),),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 30,left: 20),
                              child: Text("Ride:",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Text("Vehicle model name",style: TextStyle(fontSize: 16,color: Colors.grey),),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.access_time,color: Colors.green,),
                              Text("10:00-11:13" , style: TextStyle(color: Colors.green, fontSize: 16,fontWeight: FontWeight.bold),),
                              SizedBox(width: 8,),
                              Text("\$40 " , style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.bold),)

                            ],
                          ),
                        ),

                      ],
                    ),
                    // color: Colors.cyanAccent,
                    //shadowColor: Colors.black,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    elevation: 8,

                  )),
           SizedBox(height: 30),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 50),
                child: MaterialButton(
                  color: Colors.cyanAccent,
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
                  },
                  shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   color: Colors.white,
                    // ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Go To Home",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,color: Colors.black,
                    ),

                  ),
                ),
              ),
              SizedBox(height: 20,),

            ],

          ),
        ),
      )

    );
  }
}
