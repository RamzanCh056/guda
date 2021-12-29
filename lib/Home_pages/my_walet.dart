import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Home_pages/Payment_dashboard.dart';


class MyWalet extends StatelessWidget {
  const  MyWalet({Key? key}) : super(key: key);

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
                    Text('My Wallet',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Balance",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          MaterialButton(
                             color: Colors.grey,
                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(16),
                            ),

                            onPressed: (){},
                            child: Text("Tope Up",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                     Row(
                       children: [
                         Text("\$ 10.50",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                       ],
                     ),
                      Divider(thickness: 2,),
                      ListTile(title: Text("Payment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        onTap: (){
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaymentDashboard()));
                        },
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Divider(thickness: 2,),

                      ListTile(title: Text("Withdraw", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        onTap: (){},
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Divider(thickness: 2,),

                    ],
                  ),
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

    );
  }
}