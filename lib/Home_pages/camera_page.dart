import 'package:flutter/material.dart';
import 'package:guda_ui_screen/Home_pages/map_page.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                decoration: BoxDecoration(
                    image:
                    DecorationImage(image: AssetImage('images/scann.png'))),
              ),
              Positioned(
                top: 10,
                left: 10,
                child:  IconButton(

                  icon: Icon(Icons.arrow_back),
                  color: Colors.indigo,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MapPage()));
                  },
                ),),
              Positioned(
                left: 0,
                right: 0,
                bottom: 30,
                child: Container(
                  height: 160,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(65)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, right: 10, top: 10),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Scan QR Code in the ride',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(65)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            // _onButtonPressed();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => MapDriection()));
                          },
                          icon: Icon(
                            Icons.location_pin,
                            size: 45,
                            //color: Colors.grey,
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              // setState(() {
                              //   _qrScanner();
                              // });
                            },
                            icon: Icon(
                              Icons.lock_open,
                              size: 45,
                              //  color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => MapReportPage()));
                            },
                            icon: Icon(
                              Icons.settings,
                              size: 45,
                              // color: Colors.grey,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }}
