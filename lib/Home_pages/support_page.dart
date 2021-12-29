import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Home_pages/my_walet.dart';
import 'package:guda_ui_screen/Home_pages/payment_history.dart';
import 'package:guda_ui_screen/Home_pages/support_request.dart';
import 'package:guda_ui_screen/Home_pages/top_up.dart';


class SuportPage extends StatefulWidget {
  const  SuportPage({Key? key}) : super(key: key);

  @override
  State<SuportPage> createState() => _SuportPageState();
}

class _SuportPageState extends State<SuportPage> {
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
                              builder: (context) => Dashboard()));
                    },
                  ),
                  Text('Support',
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
                    ListTile(title: Text("Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },

                    ),
                    Divider(thickness: 2,),
                    ListTile(title: Text("Your Phone", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){},
                    ),
                    Divider(thickness: 2,),

                    ListTile(title: Text("Your Message", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PaymentHistory()));

                      },
                    ),
                    Divider(thickness: 2,),

                    SizedBox(height: 24,),
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
                                  builder: (context) => SuportRequest()));
                        },
                        child: Text(
                          'Send',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    )
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