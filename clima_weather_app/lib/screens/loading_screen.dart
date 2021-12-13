import 'package:flutter/material.dart';
import 'package:linuxclock/screens/location_screen.dart';
import 'package:linuxclock/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void fetchData() async {
    LocProvider loc = LocProvider();
    var weatherData = await loc.fetchGeodata(55, 12);

    Navigator.push(context,
        MaterialPageRoute(builder: (builder) => LocationScreen(weatherData)));
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: () {
            //Get the current location
            fetchData();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
