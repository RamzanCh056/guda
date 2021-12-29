import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Payment_dashboard.dart';
import 'package:guda_ui_screen/Home_pages/Seeting_page.dart';
import 'package:guda_ui_screen/Home_pages/invite_friends.dart';
import 'package:guda_ui_screen/Home_pages/my_walet.dart';
import 'package:guda_ui_screen/Home_pages/select_catagory.dart';
import 'package:guda_ui_screen/Home_pages/select_ride_page.dart';
import 'package:guda_ui_screen/Home_pages/support_page.dart';
import 'package:guda_ui_screen/Home_pages/ticket_booking.dart';
import 'package:guda_ui_screen/Order_Food/search_reasturant.dart';
class Dashboard extends StatelessWidget {
   Dashboard({Key? key}) : super(key: key);
GlobalKey<ScaffoldState> _scaffoldKEY = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKEY,
      drawer: Drawer(child: ListView(
        children: [
          Container(color: Colors.black,
              child: DrawerHeader(child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "images/logo.png",
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("Zayd",  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)
                  ],
                ),

                color: Colors.black,))),
          ListTile(title: Text("My Wallet", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>   MyWalet()),

              );


            },
            trailing: Text("\$ 10.50", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          ),
          Divider(thickness: 2,),
          ListTile(title: Text("Invite Friends", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => InviteFriend()));
            },
          ),
          Divider(thickness: 2,),
          ListTile(title: Text("Support", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>   SuportPage()),

              );
            },
          ),
          Divider(thickness: 2,),
          ListTile(title: Text("Seetings", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeetingPage()));
            },
          ),
          Divider(thickness: 2,),
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 18, left: 18, top: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Row(
                    children: [
                      Builder(
                        builder: (context) {
                          return IconButton(

                          icon: Icon(Icons.menu, color: Colors.white,),
                            onPressed: () => _scaffoldKEY.currentState!.openDrawer(),
                          );
                        }
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage('images/logo.png'),
                      ),
                      const SizedBox(
                        width: 190,
                      ),
                      const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 28,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 46,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Hello Zayd,',
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 46),
                  child: const Text(
                    'Select a service',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset('images/car.png'),
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
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: Image.asset('images/hamb.jpg',fit: BoxFit.cover,)),
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
                          color: Colors.greenAccent[400],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => varification()));
                          },
                          child: const Text(
                            'Cab booking',
                            style: const TextStyle(color: Colors.black),
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
                          color: Colors.greenAccent[400],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SearchResturant()));
                          },
                          child: const Text(
                            'Order food',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          height: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            child: Image.asset('images/shoping.png'),
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
                            child: Image.asset('images/ticket.png'),
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
                          color: Colors.greenAccent[400],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Selectcatagory()));
                          },
                          child: const Text(
                            'Go Shopping',
                            style: TextStyle(color: Colors.black),
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
                          color: Colors.greenAccent[400],
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  BookTicket()));
                          },
                          child: const Text(
                            'Book tickets',
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Text(
                    'Special promotion for you:',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            child: Image.asset('images/promotion1.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}