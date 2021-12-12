import 'package:flutter/material.dart';
import 'package:linuxclock/screens/city_screen.dart';
import 'package:linuxclock/services/location.dart';
import 'package:linuxclock/services/weather.dart';
import '../utilities/constants.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen(@required this.weatherData);

  final weatherData;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // double temp = 0.0;
  // double condition = 0.0;
  // String cityname = '';

  var temp;
  var condition;
  var cityname;

  WeatherModel _weatherModel = WeatherModel();

  LocProvider loc = LocProvider();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.weatherData);
  }

  void updateUI(data) {
    setState(() {
      temp = data['main']['temp'] / 10;

      condition = data['weather'][0]['id'];
      cityname = data['sys']['country'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://raw.githubusercontent.com/londonappbrewery/Clima-Flutter/master/images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () async {
                      var weatherData = await loc.fetchGeodata(12, 17);

                      updateUI(weatherData);
                    },
                    child: Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () async {
                      String cityname = 'Mumbai';

                      var data = Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => CityScreen()));
                      if (data != null) cityname = await data;

                      var weatherData = await loc.fetchCitydata(cityname);
                      updateUI(weatherData);
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temp°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      _weatherModel.getWeatherIcon(condition.toInt()),
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  "${_weatherModel.getMessage(temp.toInt())} in $cityname!",
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
