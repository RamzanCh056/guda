import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/map_page.dart';
import 'package:guda_ui_screen/Home_pages/select_ride_page.dart';


class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                builder: (context) => varification()));
                      },
                    ),
                    Text('Search',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 20),
              //   child: Column(
              //     children: [
              //       Expanded(
              //           child: Stack(
              //         children: [
              //           Container(
              //             child: ClipRRect(
              //               borderRadius: BorderRadius.circular(18),
              //               child: Image.asset('images/food.png'),
              //             ),
              //           )
              //         ],
              //       ))
              //     ],
              //   ),
              // ),

              SizedBox(height: 65.0),
              Container(
                //height: 600,
                height: 614,
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
                        padding: EdgeInsets.only(top: 35.0),
                        child: Container(
                            color: Colors.white,
                            height: 550,
                            width: 220.0,
                            // height: MediaQuery.of(context).size.height - 1100.0,
                            child: ListView(children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                child: Column(
                                  children: [
                                    // SizedBox(
                                    //   height: 24,
                                    // ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          height: 60,
                                          child: Card(
                                            elevation: 0.5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                child: ListTile(
                                                  leading: Text('Mibabros'),
                                                )),
                                          ),
                                        )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          height: 60,
                                          child: Card(
                                            elevation: 0.5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                child: ListTile(
                                                  leading: Text(
                                                      'Malaika Market Place'),
                                                )),
                                          ),
                                        )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          height: 60,
                                          child: Card(
                                            elevation: 0.5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                child: ListTile(
                                                  leading: Text(
                                                      'African University of Benin'),
                                                )),
                                          ),
                                        )),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Container(
                                          height: 60,
                                          child: Card(
                                            elevation: 0.5,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                child: ListTile(
                                                  leading: Text('Toyota Benin'),
                                                )),
                                          ),
                                        )),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 20,
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MapPage()));
                                        },
                                        child: Text(
                                          'Select',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                      ),
                                    )
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

              margin: EdgeInsets.only(top: 100, left: 30, right: 20),
              height: 130,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                //shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SizedBox(
                      //   height: 70,
                      // ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Haojoue Moto, Cotonou')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.directions_car),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Mairie de cotonou')
                        ],
                      )
                    ],
                  ),
                ),
              )
          ),
        ]),

    );
  }

  buildCard() {
    return Container(
        margin: EdgeInsets.only(top: 100, left: 20, right: 20),
        height: 200,
        width: double.infinity,
        color: Colors.white,
        child: Card(
          color: Colors.lightBlueAccent,
          shadowColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          elevation: 3,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Text(
                'abc',
              )
            ],
          ),
        ));
  }
}
