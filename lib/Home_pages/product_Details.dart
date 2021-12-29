import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/Buy_product.dart';
import 'package:guda_ui_screen/Home_pages/My_Cart.dart';
class productdetails extends StatefulWidget {
  const productdetails({Key? key}) : super(key: key);

  @override
  _productdetailsState createState() => _productdetailsState();
}

class _productdetailsState extends State<productdetails> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                              builder: (context) => BuyProduct()));
                    },
                  ),
                  Text('I phone 12 pro',
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
                    SizedBox(height: 150,),
                    ListTile(title: Text("Iphone 12 pro max", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      onTap: (){

                      },
                    ),

                    ListTile(title: Text("1000\$", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      onTap: (){},
                    ),
                   SizedBox(height: 12,),

                    ListTile(title: Text("About this item", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      onTap: (){
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => PaymentHistory()));

                      },
                    ),
                    //Divider(thickness: 2,),
                    ListTile(title: Text("Brand", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      trailing: Text("Apple", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey),),
                      onTap: (){
                      },
                    ),
                    ListTile(title: Text("Form factor:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      trailing: Text("Smartphone", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey),),
                      onTap: (){
                      },
                    ),
                    ListTile(title: Text("Memory", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      trailing: Text("64GB", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.grey),),
                      onTap: (){
                      },
                    ),
                    ListTile(title: Text("Here is write the information of product ", style: TextStyle(fontSize: 16, ),),
                      onTap: (){
                      },
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
                              MaterialPageRoute(builder: (context) => Mycart()));
                        },
                        child: Text(
                          'Buy now',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    )


                  ],
                ),
              ),

            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 100, left: 60, right: 60),
            height: 200,
            // width: 500,
            width: double.infinity,
            child: Card(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Image.asset('images/iphone.jpg',fit: BoxFit.fill,)) ,
              // color: Colors.cyanAccent,
              //shadowColor: Colors.black,

              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              elevation: 8,

            )),
      ]),

    );
  }
}
