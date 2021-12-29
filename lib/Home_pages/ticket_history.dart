import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/ticket_booking.dart';
import 'package:guda_ui_screen/Home_pages/ticket_details.dart';
class Tickerhistory extends StatefulWidget {
  const Tickerhistory({Key? key}) : super(key: key);

  @override
  _TickerhistoryState createState() => _TickerhistoryState();
}

class _TickerhistoryState extends State<Tickerhistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ticketdetails ()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    color: Colors.white,
                    height: 800.0,
                    width: 220.0,
                    // height: MediaQuery.of(context).size.height - 1100.0,
                    child: ListView(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 100),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'History',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 34, right: 34),
                          child: Column(children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://image.shutterstock.com/image-illustration/white-big-tour-bus-isolated-260nw-1023066025.jpg'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('8, jan 2022'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Truck ride'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://image.shutterstock.com/image-illustration/white-big-tour-bus-isolated-260nw-1023066025.jpg'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('8, jan 2022'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Truck ride'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://image.shutterstock.com/image-illustration/white-big-tour-bus-isolated-260nw-1023066025.jpg'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('8, jan 2022'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Truck ride'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://image.shutterstock.com/image-illustration/white-big-tour-bus-isolated-260nw-1023066025.jpg'),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('8, jan 2022'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Truck ride'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                              ],
                            ),

                          ]))
                    ]),
                  ),

                )
              ],
            ),
          )
        ]));
  }
}