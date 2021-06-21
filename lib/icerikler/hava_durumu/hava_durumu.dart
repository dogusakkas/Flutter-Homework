import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/icerikler/hava_durumu/lokasyon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'lokasyon.dart';



const apiKey = "f7893fd4e9a1080bfa5a39897350cac9";

class WeatherDisplayData{
  Icon weatherIcon;
  WeatherDisplayData({@required this.weatherIcon});
}


class WeatherData{
  WeatherData({@required this.locationData});

  LocationHelper locationData;
  double currentTemperature;
  int currentCondition;
  String city;

  Future<void> getCurrentTemperature() async{
    Response response = await get(Uri.parse("http://api.openweathermap.org/data/2.5/weather?lat=38.614033&lon=27.429562&appid=f7893fd4e9a1080bfa5a39897350cac9&units=metric"));
    if(response.statusCode == 200){
      String data = response.body;
      var currentWeather = jsonDecode(data);

      try{
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['id'];
        city = currentWeather['name'];
      }catch(e){

      }

    }


  }

  WeatherDisplayData getWeatherDisplayData(){
    if(currentCondition <600){
      //hava bulutlu
      return WeatherDisplayData(
          weatherIcon: Icon(
              FontAwesomeIcons.cloud,
              size: 75.0,
              color:Colors.blue
          ),
          );
    }
    else{
      //hava iyi
      //gece gündüz kontrolü
      var now = new DateTime.now();
      if(now.hour >=19){
        return WeatherDisplayData(
            weatherIcon: Icon(
                FontAwesomeIcons.moon,
                size: 75.0,
                color:Colors.black
            ),
            );
      }else{
        return WeatherDisplayData(
            weatherIcon: Icon(
                FontAwesomeIcons.sun,
                size: 75.0,
                color:Colors.yellow
            ),
            );

      }
    }
  }


}