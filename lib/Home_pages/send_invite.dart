import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Home_pages/invite_friends.dart';


class sendinvite extends StatelessWidget {
  const  sendinvite ({Key? key}) : super(key: key);

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
                              builder: (context) => InviteFriend()));
                    },
                  ),
                  Text('Invite Fiends',
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
                    SizedBox(height: 70,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/logo.png"),

                  ),
                  title: Text("Abimbola",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                  onTap: (){
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => PaymentDashboard()));
                  },
                  trailing:  MaterialButton(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(16),
                    ),

                    onPressed: (){},
                    child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),


                ),
                    SizedBox(height: 12,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/logo.png"),

                      ),
                      title: Text("Jangela",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                      onTap: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PaymentDashboard()));
                      },
                      trailing:  MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16),
                        ),

                        onPressed: (){},
                        child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),


                    ),
                    SizedBox(height: 12,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/logo.png"),

                      ),
                      title: Text("zayd",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                      onTap: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PaymentDashboard()));
                      },
                      trailing:  MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16),
                        ),

                        onPressed: (){},
                        child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),


                    ),
                    SizedBox(height: 12,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/logo.png"),

                      ),
                      title: Text("Ahmed",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                      onTap: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PaymentDashboard()));
                      },
                      trailing:  MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16),
                        ),

                        onPressed: (){},
                        child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),


                    ),
                    SizedBox(height: 12,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/logo.png"),

                      ),
                      title: Text("Baahir",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                      onTap: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PaymentDashboard()));
                      },
                      trailing:  MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16),
                        ),

                        onPressed: (){},
                        child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),


                    ),
                    SizedBox(height: 12,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("images/logo.png"),

                      ),
                      title: Text("Jangela",style: TextStyle(fontSize:16, color: Colors.deepPurple),),
                      onTap: (){
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => PaymentDashboard()));
                      },
                      trailing:  MaterialButton(
                        color: Colors.black,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(16),
                        ),

                        onPressed: (){},
                        child: Text("Send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                      ),


                    )


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