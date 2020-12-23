import 'package:flutter/material.dart';
import 'package:hotshotter/bankdetails.dart';
import 'package:hotshotter/home.dart';

void main() => runApp(Bankdetails());

class Bankdetails extends StatelessWidget {
  final appTitle = 'Bank Details';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(title),
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
                      image: ExactAssetImage('assets/images/bank.jpg'),
                      fit: BoxFit.fill,
                    ),
                  )),

              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Account Holder Name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Account Number",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Conform Account Number",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Bank Name",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Bank Identifier Code",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 10.0)),
              new TextFormField(
                decoration: new InputDecoration(
                  labelText: "Other Details",
                  fillColor: Colors.white,
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(25.0),
                    borderSide: new BorderSide(
                    ),
                  ),
                  //fillColor: Colors.green
                ),
                validator: (val) {
                  if(val.length==0) {
                    return "Email cannot be empty";
                  }else{
                    return null;
                  }
                },

                style: new TextStyle(
                  fontFamily: "Poppins",
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 30.0)),
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



       // This





  }
}