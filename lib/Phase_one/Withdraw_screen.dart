import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Phase_one/my_profile.dart';
import 'package:guda_ui_screen/Phase_one/payment_card.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WIthdrawpage(),
    );
  }
}

class WIthdrawpage extends StatefulWidget {
  const WIthdrawpage({Key? key}) : super(key: key);

  @override
  _WIthdrawpageState createState() => _WIthdrawpageState();
}

class _WIthdrawpageState extends State<WIthdrawpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
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
                        MaterialPageRoute(builder: (context) => Profile ()));
                  },
                ),
              ],
            ),
          ),

          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height ,
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
                            padding: EdgeInsets.only(
                                left: 20, right: 100),
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                  child: Text(
                                    'Withdraw',
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
                            padding: const EdgeInsets.only(left: 34,right: 34),
                            child: Column(
                              children: [

                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 10, right: 100),
                                  child:   Text("Account Number", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                  decoration: InputDecoration(
                                   // labelText: "Account Number",
                                    hintText: "Enter Account Number",
                                    contentPadding:
                                      EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                                     enabledBorder: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(28),
                                       borderSide: BorderSide(color: Colors.grey),
                                       gapPadding: 10,
                                     ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(28),
                                      borderSide: BorderSide(color: Colors.grey),
                                    )

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26,),
                          Padding(
                            padding: const EdgeInsets.only(left: 34,right: 34),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 100),
                                  child:   Text("Bank branch", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    // labelText: "Account Number",
                                      hintText: "Enter Bank branch ",
                                      contentPadding:
                                      EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        borderSide: BorderSide(color: Colors.grey),
                                        gapPadding: 10,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        borderSide: BorderSide(color: Colors.grey),
                                      )

                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 26,),
                          Padding(
                            padding: const EdgeInsets.only(left: 34,right: 34),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 10, right: 20),
                                  child:   Text("Name on bank Account", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 20,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    // labelText: "Account Number",
                                      hintText: "Enter Name ",
                                      contentPadding:
                                      EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        borderSide: BorderSide(color: Colors.grey),
                                        gapPadding: 10,
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(28),
                                        borderSide: BorderSide(color: Colors.grey),
                                      )

                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 26,),
                          Padding(
                            padding: const EdgeInsets.only(left: 24,right: 24),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 5, right: 10),
                                  child:   Text(" Amount to be Withdrawn", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                                SizedBox(height: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 60),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      // labelText: "Account Number",
                                        hintText: "\$",
                                        contentPadding:
                                        EdgeInsets.symmetric(horizontal: 42,vertical: 20),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(28),
                                          borderSide: BorderSide(color: Colors.grey),
                                          gapPadding: 10,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(28),
                                          borderSide: BorderSide(color: Colors.grey),
                                        )

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                             SizedBox(height: 26,),
                          Padding(
                            padding: const EdgeInsets.only(left: 40,right: 50),
                            child: MaterialButton(
                              color: Colors.cyanAccent,
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>  Payment()));
                              },
                              shape: RoundedRectangleBorder(
                                // side: BorderSide(
                                //  // color: Colors.white,
                                // ),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "Withdrawn",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,color: Colors.black,
                                ),

                              ),
                            ),
                          ),

                        ]
                        )
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
