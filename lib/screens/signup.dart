import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Phase_one/your_id_screen.dart';
import 'package:guda_ui_screen/widgets/checkbox.dart';
import 'package:guda_ui_screen/widgets/primary_button.dart';
import 'package:guda_ui_screen/widgets/signup_form.dart';

import '../theme.dart';



class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(

              padding: EdgeInsets.only(left: 20),
              child: Center(
                child: Container(

                  height: 140,
                  width: 220,
                  //height: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/Welcome.jpg")

                      )
                  ),
                ),
              ),
            ),
            Padding(

              padding: kDefaultPadding,
              child: Text(
                'Welcome',
                style: titleText,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: kDefaultPadding,
              child: Row(
                children: [
                  Text(
                    'Create Your Guda accound to get started',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: kDefaultPadding,
              child: SignUpForm(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: kDefaultPadding,
              child: CheckBox('Agree to terms and conditions.'),
            ),

            SizedBox(
              height: 110,
            ),
            MaterialButton(
              color: Colors.teal,
              minWidth: double.infinity,
              height: 60,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  youid()));
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

            // GestureDetector(
            //
            //     onTap: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) =>youid (),
            //           ));
            //     },
            //     child: PrimaryButton(buttonText: 'Proceed')
            // ),
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
