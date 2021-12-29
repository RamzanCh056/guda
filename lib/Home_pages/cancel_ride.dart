import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/map_page.dart';
import 'package:guda_ui_screen/Home_pages/map_report_page.dart';

class CancelPage extends StatefulWidget {
  const CancelPage({Key? key}) : super(key: key);

  @override
  _CancelPageState createState() => _CancelPageState();
}

class _CancelPageState extends State<CancelPage> {
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapPage()));
                  },
                ),
                Text('Cancel ride',
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
                                Row(
                                  children: [
                                    Expanded(
                                      // height: 65.0,
                                      // width: 200,
                                      // decoration: BoxDecoration(
                                      //   border: Border.all(
                                      //       color: Colors.grey,
                                      //       style: BorderStyle.solid,
                                      //       width: 1.0),
                                      //   borderRadius: BorderRadius.circular(10.0),
                                      // ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Reason of cancellation',
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: 180,
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
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) => Search()));
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