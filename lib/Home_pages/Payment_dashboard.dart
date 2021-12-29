import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/my_walet.dart';
import 'package:guda_ui_screen/Home_pages/payment_history.dart';
import 'package:guda_ui_screen/Home_pages/top_up.dart';


class PaymentDashboard extends StatefulWidget {
  const  PaymentDashboard({Key? key}) : super(key: key);

  @override
  State<PaymentDashboard> createState() => _PaymentDashboardState();
}

class _PaymentDashboardState extends State<PaymentDashboard> {
  String _selectedItem="";
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
                              builder: (context) => MyWalet()));
                    },
                  ),
                  Text('Payment',
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
                    ListTile(title: Text("Apple Payment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                        _onButtonPressed();
                      },
                      trailing: Icon(Icons.arrow_forward_ios),

                    ),
                    Divider(thickness: 2,),
                    ListTile(title: Text("Payment option", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){},
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    Divider(thickness: 2,),

                    ListTile(title: Text("Payment History", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PaymentHistory()));

                      },
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

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
            ),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(title: Text("Payment options", style: TextStyle(fontSize: 16, color: Colors.grey),),
                  onTap: (){},
                  trailing: Icon(Icons.close),
                ),
                Divider(thickness: 2,),
                ListTile(title: Text("Master Card", style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TopUp()));
                  },
                  trailing: Icon(Icons.local_atm),
                ),
                Divider(thickness: 2,),
                ListTile(title: Text("Apple Payment", style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TopUp()));
                  },
                  trailing: Icon(Icons.payment_outlined),
                ),
                Divider(thickness: 2,),
                ListTile(title: Text("Pay with another account", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TopUp()));
                  },
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                Divider(thickness: 2,),

              ],
            ),
          );
        });
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}