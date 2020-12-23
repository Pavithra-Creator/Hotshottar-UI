import 'package:flutter/material.dart';

import 'home.dart';
class VehicleType extends StatelessWidget {
  final appTitle = 'Vehicle Type';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
        body:  SingleChildScrollView(

          child: Column(
            children: <Widget>[


              Container(
                  width: double.infinity,
                  height: 180.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/images/truck.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),
              new Padding(padding: EdgeInsets.only(top: 20.0)),

              Container(width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.blueGrey)),
                child: DropdownButton<String>(
                  hint: Text("Vehicle Type"),
                  items: <String>['Vehicle 1', 'Vehicle 2', 'Both are same Feature', 'Different feature Vehicle'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.blueGrey)),
                child: DropdownButton<String>(
                  hint: Text("Select Size"),
                  items: <String>['Vehicle 1', 'Vehicle 2', 'Both are same Feature', 'Different feature Vehicle'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.blueGrey)),
                child: DropdownButton<String>(
                  hint: Text("Select Trailer"),
                  items: <String>['Vehicle 1', 'Vehicle 2', 'Both are same Feature', 'Different feature Vehicle'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 20.0)),
              Container(width: 200.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.0),
                    border: Border.all(color: Colors.blueGrey)),
                child: DropdownButton<String>(
                  hint: Text("Select Size"),
                  items: <String>['Vehicle 1', 'Vehicle 2', 'Both are same Feature', 'Different feature Vehicle'].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 100.0)),


              MaterialButton(
                child: Container(

                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.green[900]
                  ),

                  child: Center(
                    child: Text("Save", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),

                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                  //homepage
                },
              ),
            ],
          ),
        )
    );
  }
}