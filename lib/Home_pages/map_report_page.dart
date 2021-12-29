import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:guda_ui_screen/Home_pages/cancel_ride.dart';

import 'package:guda_ui_screen/Home_pages/search_page.dart';
class MapReportPage extends StatefulWidget {
  const MapReportPage({Key? key}) : super(key: key);

  @override
  _MapReportPageState createState() => _MapReportPageState();
}

class _MapReportPageState extends State<MapReportPage> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController? newGoogleMapControler;

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  String _selectedItem = "";
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
              child:  IconButton(

                icon: Icon(Icons.arrow_back),
                color: Colors.white,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Search()));
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.lock_open,
                            size: 45,
                            //  color: Colors.grey,
                          )),
                      IconButton(
                          onPressed: () {
                            _onButtonPressed();
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CancelPage()));
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
