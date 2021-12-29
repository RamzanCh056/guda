import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';

import 'Withdraw_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile (),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 28, left: 28, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Row(
                    children: [

                      const SizedBox(
                        width: 10,
                      ),

                      const SizedBox(
                        width: 215,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 36,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'My Profile',
                        style: const TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 36, bottom: 20),
                  child: const Text(
                    'Information',
                    style: TextStyle(color: Colors.teal, fontSize: 28,fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Container(
                              height: 180,
                              width: 150,
                              child: Image.asset('images/profile.jpeg',fit: BoxFit.fill,) ,
                            ),
                            SizedBox(width: 18,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text('Zayed' ,style: TextStyle(fontSize: 22,color: Colors.teal),),
                                  ),
                                  Container(
                                    child: Text('zayd@gmail.',style: TextStyle(fontSize: 18,color: Colors.teal)),
                                  ),
                                  Container(
                                    child: Text('this street that town, that country',style: TextStyle(fontSize: 18,color: Colors.grey)),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),


                SizedBox(height: 40,),



                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset('images/third_pic.jpg'),
                          ),
                        )),
                    const SizedBox(
                      width: 50,
                    ),
                    Expanded(
                        child: Container(

                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset('images/dollers.jpg' ) ,
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.teal,
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => varification()));
                          },
                          child: const Text(
                            'My trips',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 70,
                      ),
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.teal,
                          onPressed: () {},
                          child: const Text(
                            'My Wallet',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [

                    const SizedBox(
                      width: 50,
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                MaterialButton(
                  color: Colors.teal,
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  WIthdrawpage()));//WIthdrawpage
                  },
                  shape: RoundedRectangleBorder(
                    // side: BorderSide(
                    //   color: Colors.white,
                    // ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Proceeed",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,color: Colors.white,
                    ),

                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}