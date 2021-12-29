import 'package:flutter/material.dart';
import 'package:guda_ui_screen/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signupas(),
    );
  }
}

class signupas extends StatefulWidget {
  const signupas({Key? key}) : super(key: key);

  @override
  _signupasState createState() => _signupasState();
}

class _signupasState extends State<signupas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 76,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      const Text(
                        'Sign Up as',
                        style: const TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const SizedBox(
                  height: 100,
                ),
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
                        )
                    ),
                    const SizedBox(
                      width: 150,
                    ),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 50),
                  child: Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.teal,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>   SignUpScreen()));
                          },
                          child: const Text(
                            'Driver',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 110,
                      ),

                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [

                    const SizedBox(
                      width: 150,
                    ),
                    Expanded(
                        child: Container(
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset('images/bike.jpg'),

                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 14),
                  child: Row(
                    children: [

                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: MaterialButton(
                          //  minWidth: 30,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.teal,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>   SignUpScreen()));
                          },
                          child: const Text(
                            'Delivery',
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
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
