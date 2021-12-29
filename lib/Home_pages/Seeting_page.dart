import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
  class SeetingPage extends StatefulWidget {
    const SeetingPage({Key? key}) : super(key: key);

    @override
    _SeetingPageState createState() => _SeetingPageState();
  }

  class _SeetingPageState extends State<SeetingPage> {
    bool _switch= false;
    @override
    Widget build(BuildContext context) {
      return   Scaffold(
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
                    Text('Seetings',
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
                      SizedBox(height: 100,),
                      ListTile(title: Text("Phone Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        subtitle: Text("989 830 4949",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){

                        },

                      ),
                      Divider(thickness: 2,),
                      ListTile(title: Text("Favourite Adddres", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        subtitle: Text("Kinshasa",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){

                        },

                      ),
                      Divider(thickness: 2,),
                      ListTile(title: Text("Language", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        subtitle: Text("English",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                        trailing: Icon(Icons.arrow_forward_ios),
                        onTap: (){

                        },

                      ),
                      Divider(thickness: 2,),
                      SizedBox(height: 24,),
                      SwitchListTile(
                       // secondary: Icon(Icons.swap_vertical_circle),
                        title: Text("Notification"),
                        value:  _switch,
                        onChanged: (bool value){
                          _switch = value;
                        },
                      ),
                      Divider(thickness: 2,),
                      SizedBox(height: 24,),
                    SwitchListTile(
                      secondary: Icon(Icons.swap_vertical_circle),
                      title: Text("Trafic"),
                      value:  _switch,
                      onChanged: (bool value){
                        _switch = value;
                      },
                    ),
                    ],

                  ),
                ),

              )
            ],
          ),

        ]),

      );
    }
  }



