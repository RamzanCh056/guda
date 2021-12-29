import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Phase_one/signup_as.dart';
import 'package:guda_ui_screen/signup_page.dart';
class otp extends StatelessWidget {
  const otp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: varification (),
    );
  }
}
class varification extends StatefulWidget {
  const varification({Key? key}) : super(key: key);

  @override
  _varificationState createState() => _varificationState();
}

class _varificationState extends State<varification> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Column(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  signup())

                      );},
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Row(
                children: <Widget>[
                  Text('OTP',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                  SizedBox(width: 10.0),
                  Text('Varification',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                          fontSize: 25.0))
                ],
              ),
            ),
            SizedBox(height: 40.0),
            Container(
              height:615 ,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: ListView(
                primary: false,
                padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Container(
                          color: Colors.white,
                         // height: 600.0,
                          width: 220.0,
                           height: MediaQuery.of(context).size.height ,
                          child: ListView(children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
                              child: Column(
                                children: [

                                  SizedBox(
                                    height: 24,
                                  ),
                                  Text(
                                    'Verification',
                                    style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Enter your OTP code number",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 28,
                                  ),
                                  Container(
                                    width: 520,
                                   // padding: EdgeInsets.all(28),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            _textFieldOTP(first: true, last: false),
                                            _textFieldOTP(first: false, last: false),
                                            _textFieldOTP(first: false, last: false),
                                            _textFieldOTP(first: false, last: true),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 56,
                                        ),
                                        SizedBox(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) => signupas(),
                                                  )
                                              );
                                            },
                                            style: ButtonStyle(
                                              foregroundColor:
                                              MaterialStateProperty.all<Color>(Colors.white),
                                              backgroundColor:
                                              MaterialStateProperty.all<Color>(Colors.teal),
                                              shape:
                                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(24.0),
                                                ),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(14.0),
                                              child: Text(
                                                'Verify',
                                                style: TextStyle(fontSize: 16),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Text(
                                    "Didn't you receive any code?",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black38,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Text(
                                    "Resend New Code",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ]
                          )
                      )
                  ),
                  SizedBox(
                    height: 16,
                  ),

                ],
              ),
            )
          ],
        ),

    );
  }
  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 55,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.indigo),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
