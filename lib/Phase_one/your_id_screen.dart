import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../theme.dart';
import 'my_profile.dart';
class youid extends StatefulWidget {
  const youid({Key? key}) : super(key: key);

  @override
  _youidState createState() => _youidState();
}

class _youidState extends State<youid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 120,),
            Padding(

              padding: EdgeInsets.only(left: 20),
              child: Center(
                child: Container(

                  height: 230,
                  width: 320,
                  //height: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/id.png")

                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Center(
              child: Padding(

                padding: kDefaultPadding,
                child: Text(
                  'Your Id',
                  style: titleText,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),

                 Center(
                   child: Container(
                    height: 140,
                    width: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      child: Text("\n\nClick here to Drag Drop File" , textAlign: TextAlign.center, style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold), )
                    ),
                ),
                 ),



            SizedBox(
              height: 90,
            ),
            MaterialButton(
              color: Colors.teal,
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  Profile ()));
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

            // Padding(
            //   padding: kDefaultPadding,
            //   child: PrimaryButton(buttonText: 'Create Account'),
            // ),

          ],
        ),
      ),
    );
  }
}
