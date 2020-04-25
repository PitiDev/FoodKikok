import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'dart:math';

class Map extends StatefulWidget {
  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {

  GoogleMapController _controller;
  final CameraPosition _initialPosition = CameraPosition(target: LatLng(17.970917, 102.620167),zoom: 15.4746,);
  final List<Marker> markers = [];

  addMarker(cordinate){
    int id = Random().nextInt(100);

    setState(() {
      markers.add(Marker(position: cordinate, markerId: MarkerId(id.toString())));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Color(0XFFEF6E00),
      ),

      body: GoogleMap(
        initialCameraPosition: _initialPosition,
        mapType: MapType.normal,
        onMapCreated: (controller){
          setState(() {
            _controller = controller;
          });
        },
        markers: markers.toSet(),
        onTap: (cordinate){
          _controller.animateCamera(CameraUpdate.newLatLng(cordinate));
          addMarker(cordinate);
        },
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
        child: MaterialButton(
          minWidth: 359,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Color(0XFFEF6E00),
          child: Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/icon/order.png',
                      width: 25,
                    ),
                  ),
                  Text(
                    'ຢືນຢັນສັ່ງອາຫານ',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              )),
          onPressed: () {
            Navigator.pushNamed(context, '/status');
          },
        ),
      ),
    );
  }
}
