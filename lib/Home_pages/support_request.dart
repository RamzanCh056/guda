import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Home_pages/send_invite.dart';
import 'package:guda_ui_screen/Home_pages/support_page.dart';


class SuportRequest extends StatelessWidget {
  const  SuportRequest ({Key? key}) : super(key: key);

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
                              builder: (context) => SuportPage()));
                    },
                  ),
                  Text('Suport request',
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
                    SizedBox(height: 110,),

                    Container(

                        margin: EdgeInsets.only(top: 10, left: 30, right: 20),
                        height: 170,
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

                                ListTile(  leading: Icon(Icons.message_sharp , color: Colors.cyanAccent,),
                                  onTap: (){
                                  },
                                  trailing: Text("10:50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),

                                ),
                                ListTile( title: Text("The driver arrived at the destination and asket for more money then the app showing",style: TextStyle(fontWeight: FontWeight.bold),),),

                              ],
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 18,),
                    Container(

                        margin: EdgeInsets.only(top: 10, left: 30, right: 20),
                        height: 170,
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

                                ListTile(  leading: Icon(Icons.message_sharp , color: Colors.cyanAccent,),
                                  onTap: (){
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) =>   MyWalet()),
                                    //
                                    // );
                                  },
                                  trailing: Text("10:50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),

                                ),
                                ListTile( title: Text("The driver arrived at the destination and asket for more money then the app showing",style: TextStyle(fontWeight: FontWeight.bold),),),

                              ],
                            ),
                          ),
                        )
                    ),



                  ],
                ),
              ),

            )
          ],
        ),
        Container(

            margin: EdgeInsets.only(top: 100, left: 50, right: 50),
            height: 170,
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

                    ListTile(  leading: Icon(Icons.message_sharp , color: Colors.cyanAccent,),
                      onTap: (){
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>   MyWalet()),
                        //
                        // );
                      },
                      trailing: Text("10:50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),),

                    ),
                    ListTile( title: Text("The driver arrived at the destination and asket for more money then the app showing",style: TextStyle(fontWeight: FontWeight.bold),),),

                  ],
                ),
              ),
            )
        ),




      ]),

    );
  }
}