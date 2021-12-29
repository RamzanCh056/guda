import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/delivery_page.dart';
import 'package:guda_ui_screen/Home_pages/product_Details.dart';
class Mycart extends StatefulWidget {
  const Mycart({Key? key}) : super(key: key);

  @override
  _MycartState createState() => _MycartState();
}

class _MycartState extends State<Mycart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => productdetails()));
                  },
                ),
                Text('My Cart',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 30.0),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Container(
                      color: Colors.white,
                      height: 410,
                      width: 220.0,
                      // height: MediaQuery.of(context).size.height - 1100.0,
                      child: ListView(
                        children: <Widget>[
                          SizedBox(height: 15.0),
                          Container(
                              padding: EdgeInsets.only(right: 15.0),
                              width: MediaQuery.of(context).size.width - 30.0,
                              height: MediaQuery.of(context).size.height - 50.0,
                              child: GridView.count(
                                crossAxisCount: 2,
                                primary: false,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 15.0,
                                childAspectRatio: 0.8,
                                children: <Widget>[
                                  _buildCard('item 1', '\$200', 'images/product.jpg',
                                      false, false, context),
                                  _buildCard('item 2', '\$300', 'images/product.jpg',
                                      true, false, context),
                                  _buildCard('item 3', '\$400',
                                      'images/product.jpg', false, true, context),
                                  // _buildCard('Phone 4', '\$200', 'images/product.jpg',
                                  //     false, false, context)
                                ],
                              )),
                        ],
                      ),
                    )
                ),
                Divider(thickness: 2,),
                ListTile(title: Text("Delivery", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  trailing: Text("2\$", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  onTap: (){

                  },

                ),

                ListTile(title: Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  trailing: Text("4002\$", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  onTap: (){},
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(24)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DeliveryPage()));
                    },
                    child: Text(
                      'Pay now',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );

  }
  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
      //card pedding ch sab
        padding: EdgeInsets.only(top: 30.0, bottom: 0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {

            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.add, color: Colors.red)
                                : Icon(Icons.add,
                                color: Color(0xFFEF7532))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 75.0,
                          width: 75.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 7.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),

                ]
                )
            )
        )
    );
  }



}
