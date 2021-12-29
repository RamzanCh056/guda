import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:guda_ui_screen/signup_page.dart';

import '../login_page.dart';
class loginoption extends StatefulWidget {
  const loginoption({Key? key}) : super(key: key);

  @override
  _loginoptionState createState() => _loginoptionState();
}
class _loginoptionState extends State<loginoption> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
             //  height: 600,
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Guda.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
     child: Column(
       children: [
           SizedBox(height: 450,),
           MaterialButton(
           color: Colors.white,
           minWidth: double.infinity,
           height: 60,
           onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>  signup()));
           },
           shape: RoundedRectangleBorder(
             side: BorderSide(
               color: Colors.white,
             ),
              borderRadius: BorderRadius.circular(50),
           ),
           child: Text(
             "Get Started",
             style: TextStyle(
               fontWeight: FontWeight.w600,
               fontSize: 18,color: Colors.black,
             ),

           ),
           ),
           SizedBox(height: 12,),
           Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'Already have an account? ',
               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18,),
             ),
             SizedBox(
               width: 3,

             ),
             GestureDetector(
               onTap: () {
  Navigator.push(
   context,
   MaterialPageRoute(
     builder: (context) =>  MyApp(),
   ),
  );
               },

               child: Text(
                 'Log In',
                 style: TextStyle(color: Colors.white, fontSize: 16).copyWith(
                   decoration: TextDecoration.underline,
                   decorationThickness: 1,
                 ),
               ),
             ),
           ],
           ),


       ],

     ),

          ),
        )

      ),
    );
  }
}