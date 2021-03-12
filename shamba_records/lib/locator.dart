import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Locator extends StatefulWidget {
  @override
  _LocatorState createState() => _LocatorState();
}

class _LocatorState extends State<Locator> {
  var locationMessage = "";

  void getCurrentLocation() async {
    var position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high
    );
    var lastPosition = await Geolocator.getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    print("$lat, $long");

    setState(() {
      locationMessage = "Latitude : $lat, Longitude : $long";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.location_on,
            size: 46.0,
            color: Colors.blue,
          ),
          SizedBox(height: 10.0,),
          Text('Get User Location',
            style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0,),
          Text("Position : $locationMessage",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 75.0, right: 75.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.0),
                  gradient: new LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 136, 34),
                        Color.fromARGB(255, 255, 177, 41)]
                  ),
              ),
              child: FlatButton(
                  onPressed: (){
                  getCurrentLocation();
                  },
                  child: Text('Get User Current Location',
                    style: TextStyle(color: Colors.black),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
