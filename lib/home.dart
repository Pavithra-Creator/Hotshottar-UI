import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hotshotter/about.dart';
import 'package:hotshotter/bankdetails.dart';
import 'package:hotshotter/changepassword.dart';
import 'package:hotshotter/login.dart';
import 'package:hotshotter/profile.dart';
import 'package:hotshotter/regsister.dart';
import 'package:hotshotter/vehicletype.dart';

import 'earn.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  final appTitle = 'HOTSHOTTER';

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
      appBar: AppBar(title: Text(title),
      backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VehicleType()),
                    );
                    //home
                  },
                  child: Container(
                    width: double.infinity,
                    height: 200.00,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('assets/images/body.jpg',
                        fit: BoxFit.fill,),
                    ),),
                )
            ),

              new Padding(padding: EdgeInsets.only(top: 10.0)),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.body1,
                children: [
                  TextSpan(text: ' Click '),
                  WidgetSpan(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: Icon(Icons.arrow_upward_sharp),
                    ),
                  ),
                  TextSpan(text: 'To Know Vehicle Type'),
                ],
              ),
            ),


      ])),
      drawer: Drawer(
        child: Container(
          color: Colors.red[900],
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red[900],
                ),
                accountName: Text("User Name Goes"),
                accountEmail: Text("emailaddress@gmail.com"),
              currentAccountPicture:CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ) ,
              /*  currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Color(0xFF56ccf2)
                      : Colors.white,
                  child: Text("Profile",
                    style: TextStyle(fontSize: 20,
                      color: Colors.lightGreenAccent,),),
                ),*/
              ),
              ListTile(

                title: Text('Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: Icon(Icons.home,color: Colors.white,),
                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Home()));
                },
              ),
              ListTile(

                title: Text('Earning History',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),
                leading: Icon(Icons.monetization_on_outlined,color: Colors.white,),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => EarnHistory()));
                },
              ),
              ListTile(

                title: Text('Profile',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                leading: Icon(Icons.person,color: Colors.white,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Profile()));
                },
              ),
              ListTile(

                title: Text('Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                leading: Icon(Icons.account_balance_wallet,color: Colors.white,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bankdetails()),
                  );
                },
              ),
              ListTile(

                title: Text('Change Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                leading: Icon(Icons.lock,color: Colors.white,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ChangePass()));
                },
              ),
              ListTile(

                title: Text('About Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                trailing: Icon(Icons.arrow_right,
                  color: Colors.white,size: 30,),
                leading: Icon(Icons.people_rounded,color: Colors.white,),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => About()));
                },
              ),
              SizedBox(height: 70,),
              ListTile(

                title: Text('Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    )),

                contentPadding: EdgeInsets.fromLTRB(20, 5, 0, 5),

                leading: Icon(Icons.exit_to_app,color: Colors.white,),
                onTap: () =>exit(0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}