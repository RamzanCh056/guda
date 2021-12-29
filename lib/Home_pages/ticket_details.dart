import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/My_Cart.dart';
import 'package:guda_ui_screen/Home_pages/ticket_booking.dart';
import 'package:guda_ui_screen/Home_pages/ticket_history.dart';
import 'package:guda_ui_screen/Home_pages/ticketshedule.dart';
class Ticketdetails extends StatefulWidget {
  const  Ticketdetails({Key? key}) : super(key: key);

  @override
  _TicketdetailsState createState() => _TicketdetailsState();
}

class _TicketdetailsState extends State< Ticketdetails> {
  bool _switch= false;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body:  Stack(children: [
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
                              builder: (context) => TickerSchedule()));
                    },
                  ),
                  Text('Details',
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
              height: 614,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.only(topLeft: Radius.circular(65.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children: [
                    SizedBox(height: 100,),
                    ListTile(title: Text("Route", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      subtitle:  Text("X place to y place", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },

                    ),
                    ListTile(title: Text("Departure date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      subtitle:  Text("2 jan , 2022", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },

                    ),
                    ListTile(title: Text("Bus details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      subtitle:  Text("Mercedez benz, 8:00 am to 3 pm", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),),
                      onTap: (){

                      },

                    ),
                    ListTile(title: Text("Seat", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },

                    ),
                    ListTile(title: Text("C24", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },

                    ),


                    Container(
                      height: 50,
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.cyanAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(24)),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Tickerhistory ()));
                        },
                        child: Text(
                          'Procced to payment',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),



                  ],

                ),
              ),

            )
          ],
        ),

      ]),

    );
  }
}



