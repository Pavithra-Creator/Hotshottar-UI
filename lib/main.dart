import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hotshotter/login.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => HomeScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

      child: Column(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: 500.00,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: ExactAssetImage('assets/images/truckp.jpg'),
                  fit: BoxFit.fill,
                ),
              )),
          Container(
            alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: ExactAssetImage('assets/images/logo.png'),
                  fit: BoxFit.fill,
                ),
              )),
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new Text(
            "HOTSHOTTER",style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,

            ),),
        new Padding(padding: EdgeInsets.only(top: 20.0)),

          new Text(
            "Book Hotshotter everywhere and ",style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
              fontWeight: FontWeight.bold
          ),),


          new Text(
            "Live tracking your things",style: TextStyle(
              fontSize: 15,
              color: Colors.black54,
              fontWeight: FontWeight.bold
          ),),


   ] )
    ));

  }

}



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme:ThemeData(primaryColor: Colors.red),
      home: Login()
    );
  }
}

