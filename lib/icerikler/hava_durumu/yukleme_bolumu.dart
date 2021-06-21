import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/hava_durumu/ana_sayfa.dart';
import 'package:flutter_app/icerikler/hava_durumu/hava_durumu.dart';
import 'package:flutter_app/icerikler/hava_durumu/lokasyon.dart';
import 'ana_sayfa.dart';
import 'hava_durumu.dart';
import 'lokasyon.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  LocationHelper locationData;
  Future<void> getLocationData() async{
    locationData = LocationHelper();
    await locationData.getCurrentLocation();



  }

  void getWeatherData() async {
    await getLocationData();

    WeatherData weatherData = WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();



    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return hava_durumu(weatherData: weatherData,);
    }));


  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeatherData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}