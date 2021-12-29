import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/My_Cart.dart';
class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
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
                              builder: (context) => Mycart()));
                    },
                  ),
                  Text('Checkout',
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
                    ListTile(title: Text("Addrees Details", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      trailing: Text("change", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),),
                      onTap: (){

                      },

                    ),
                    Divider(thickness: 2,),
                    ListTile(title: Text("Zayd", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                      },
                    ),
                    Divider(thickness: 2,),
                    ListTile(title: Text("Something Something Adrees", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                      },

                    ),
                    Divider(thickness: 2,),
                    ListTile(title: Text("+23490113271", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                      },

                    ),
                    Divider(thickness: 2,),
                  Row(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                      ),
                         Radio(
                          value: 1,
                          groupValue: 1,
                          activeColor: Colors.green,
                          onChanged: (val){

                          },
                        ),
                      Text("Door Delivery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

                    ],
                  ),
                    Divider(thickness: 2,),
                    Row(
                      children: [
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                        ),
                        Radio(
                          value: 1,
                          groupValue: 1,
                         activeColor: Colors.green,
                          onChanged: (val){

                          },
                        ),
                        Text("Pick up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),

                      ],
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



