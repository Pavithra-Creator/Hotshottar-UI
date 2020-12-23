import 'package:flutter/material.dart';

import 'home.dart';
class About extends StatelessWidget {
  final appTitle = 'About Us';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _dropDownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text(widget.title),
    centerTitle: true,
    backgroundColor: Colors.red[900],
    leading: IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.white),
    onPressed: () =>  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Home()),
    )
    ),
    ),
    body: Container());
  }}