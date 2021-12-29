import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:guda_ui_screen/Home_pages/Dashboard_screen.dart';
import 'package:guda_ui_screen/Home_pages/map2_page.dart';
import 'package:guda_ui_screen/Order_Food/resturant_page.dart';

class SearchResturant extends StatefulWidget {
  const SearchResturant({Key? key}) : super(key: key);

  @override
  _SearchResturantState createState() => _SearchResturantState();
}

class _SearchResturantState extends State<SearchResturant> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController? newGoogleMapControler;

  String _selectedItem = "";
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
                mapType: MapType.normal,
                myLocationButtonEnabled: true,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controllerGoogleMap.complete(controller);
                  newGoogleMapControler = controller;
                }),
            Positioned(
              top: 10,
              left: 10,
              child: IconButton(

                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Dashboard()));
                },
              ),),
            Positioned(
                top: 50,
                left: 20,
                child: Container(
                  // height: 70,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/logo.png'),
                  ),
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(65)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          // _onButtonPressed();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResturantPage()));
                        },
                        icon: Icon(
                          Icons.location_pin,
                          size: 45,
                          //color: Colors.grey,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CameraPage()));
                          },
                          icon: Icon(
                            Icons.lock_open,
                            size: 45,
                            //  color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {
                        //    _onButtonPressed();
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
      ),

    );
  }
  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  onTap: () => _selectItem('Col'),
                  // leading: Icon(Icons.cancel),
                  title: TextButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => CancelPage()));
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () => _selectItem('Col'),
                  // leading: Icon(Icons.cancel),
                  title: TextButton(
                    onPressed: () {},
                    child: Text(
                      'SOS',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () => _selectItem('Col'),
                  // leading: Icon(Icons.cancel),
                  title: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Broken ride',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
