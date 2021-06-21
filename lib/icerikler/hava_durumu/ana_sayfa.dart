import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hava_durumu.dart';

class hava_durumu extends StatefulWidget {

  final WeatherData weatherData;

  hava_durumu({@required this.weatherData});

  @override
  _hava_durumuState createState() => _hava_durumuState();
}

class _hava_durumuState extends State<hava_durumu> {
  int temperature;
  Icon weatherDisplayIcon;
  String city;
  void updateDisplayInfo(WeatherData weatherData){
    setState(() {
      temperature = weatherData.currentTemperature.round();
      city = weatherData.city;
      WeatherDisplayData weatherDisplayData = weatherData.getWeatherDisplayData();
      weatherDisplayIcon = weatherDisplayData.weatherIcon;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(

        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 40,),
            Container(
              child: weatherDisplayIcon,
            ),
            SizedBox(height: 15,),
            Center(
              child: Text('$temperature°',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 80.0,
                    letterSpacing: -5
                ),
              ),
            ),
            SizedBox(height: 15,),
            Center(
              child: Text(city,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    letterSpacing: -5
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}