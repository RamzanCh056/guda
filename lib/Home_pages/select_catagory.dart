import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Buy_product.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
class Selectcatagory extends StatefulWidget {
  const Selectcatagory({Key? key}) : super(key: key);

  @override
  _SelectcatagoryState createState() => _SelectcatagoryState();
}

class _SelectcatagoryState extends State<Selectcatagory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                ),
                Text('Select catagory',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        color: Colors.white,
                        height: 600,
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
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Electronics" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Everydayuse" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Snacks" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Apparels" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )),

                                  ],
                                ),
                                SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Furniture" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                        child: Container(
                                          height: 100,
                                          child: Card(
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(14)),
                                            child: Center(

                                              child:
                                              Text("Medicle supplies" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                                            ),
                                          ),
                                        )),

                                  ],
                                ),


                                SizedBox(
                                  height: 12,
                                ),

                                SizedBox(
                                  height: 170,
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
                                          MaterialPageRoute(builder: (context) =>  BuyProduct()));
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
    );
  }
}
