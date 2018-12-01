import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:woundcare/core/State.dart';
import 'package:woundcare/screen/AppointmentPage.dart';
import 'package:woundcare/screen/HistoryPage.dart';
import 'package:woundcare/screen/HomePage.dart';
import 'package:woundcare/screen/LoginPage.dart';
import 'package:woundcare/screen/NewAppointmentPage.dart';
import 'package:woundcare/screen/SignupPage.dart';
import 'package:woundcare/screen/Welcome.dart';

void main() {
  //debugPaintSizeEnabled=true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/welcome" : (context) {
           return new Welcome();
        },

        "/signup" : (context) {
          return new SignupPage();
        },

        "/home_page" : (context) {
          return new HomePage();
        }

      },
      theme: new ThemeData(
        // This is the theme of your application.
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: (){
          if(AppState.getInstance().isLoggedIn()){
            return new HomePage();
          }else{
            return new Welcome();
          }
      }(),
    );
  }
}


