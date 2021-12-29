import 'package:country_code_picker/country_code_picker.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Phase_one/otp_varification.dart';

import 'login_page.dart';
import 'onboarding/MyHomePage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [Locale('en', 'us')],
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      home: signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  MyApp())

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
                Text('Signup',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Page',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
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
                        color: Colors.teal,
                        height: 65.0,
                        width: 120.0,
                        // height: MediaQuery.of(context).size.height - 1100.0,
                        child: ListView(children: [
                          CountryCodePicker(
                            initialSelection: 'za',
                            showCountryOnly: false,
                            showOnlyCountryWhenClosed: false,
                            favorite: ['1', 'us'],
                            enabled: true,
                            hideMainText: false,
                            showFlagMain: true,
                            hideSearch: false,
                            showFlag: true,
                            showFlagDialog: true,
                            alignLeft: true,
                            padding: EdgeInsets.all(18.0),
                          ),
                        ]))),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        height: 65.0,
                        width: 300,
                        // decoration: BoxDecoration(
                        //   border: Border.all(
                        //       color: Colors.grey,
                        //       style: BorderStyle.solid,
                        //       width: 1.0),
                        //   borderRadius: BorderRadius.circular(10.0),
                        // ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Phone Number',
                          ),
                        )),

                  ],
                ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Container(
                       height: 65.0,
                       width: 300,
                       // decoration: BoxDecoration(
                       //   border: Border.all(
                       //       color: Colors.grey,
                       //       style: BorderStyle.solid,
                       //       width: 1.0),
                       //   borderRadius: BorderRadius.circular(10.0),
                       // ),
                       child: TextFormField(
                         decoration: InputDecoration(
                           hintText: 'Enter Email',
                         ),
                       )),
                 ],
               ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: MaterialButton(
                    color: Colors.teal,
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) =>   otp())

    );
    },

                    child: Text(
                      "sign in",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  height: 65.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
