import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Order_Food/resturant_page.dart';

class FoodMenu extends StatefulWidget {
  const FoodMenu({Key? key}) : super(key: key);

  @override
  _FoodMenuState createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ResturantPage()));
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height,
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
                    color: Colors.white,
                    height: 800.0,
                    width: 220.0,
                    // height: MediaQuery.of(context).size.height - 1100.0,
                    child: ListView(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 50),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10, right: 10),
                              child: Text(
                                'Found 4 results',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 34, right: 34),
                          child: Column(children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://media.istockphoto.com/photos/beef-burger-with-soda-chips-and-souces-on-table-golden-picture-id1085071842?k=20&m=1085071842&s=612x612&w=0&h=K1nkYGhPMkZ1G2WQ-oL_iq9o9EXun2O3fzL5PAbdhaw='),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('burger'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('spicy'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://media.istockphoto.com/photos/beef-burger-with-soda-chips-and-souces-on-table-golden-picture-id1085071842?k=20&m=1085071842&s=612x612&w=0&h=K1nkYGhPMkZ1G2WQ-oL_iq9o9EXun2O3fzL5PAbdhaw='),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('zinger'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('spicy'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$150',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://media.istockphoto.com/photos/beef-burger-with-soda-chips-and-souces-on-table-golden-picture-id1085071842?k=20&m=1085071842&s=612x612&w=0&h=K1nkYGhPMkZ1G2WQ-oL_iq9o9EXun2O3fzL5PAbdhaw='),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('pizza'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('tikka'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$102',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(24)),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 45,
                                            backgroundImage: NetworkImage(
                                                'https://media.istockphoto.com/photos/beef-burger-with-soda-chips-and-souces-on-table-golden-picture-id1085071842?k=20&m=1085071842&s=612x612&w=0&h=K1nkYGhPMkZ1G2WQ-oL_iq9o9EXun2O3fzL5PAbdhaw='),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('veggie'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('Tomato'),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$12',
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),

                                ),
                              ],
                            ),

                          ]))
                    ]),
                  ),

                )
              ],
            ),
          )
        ]));
  }
}
