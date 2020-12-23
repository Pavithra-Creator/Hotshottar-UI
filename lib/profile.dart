import 'dart:ui';

import 'package:flutter/material.dart';

import 'home.dart';
class Profile extends StatelessWidget {
  final appTitle = 'Profile';
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
        body: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:<Widget>[
      Row(

        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(

            child:CircleAvatar(
              radius: 65,
              backgroundImage: AssetImage('assets/images/profile.png'),
            ) ,
          ),
          SizedBox(width: 50,),
          Container(

            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/edit.png'),
            ) ,
          ),
          SizedBox(width: 20,),
          Container(

            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/lock.png'),
            ) ,
          ),

          SizedBox(width: 20,)
        ],
      ),

    ]
    )
    ),

   Row(

    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
      Text('4',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),SizedBox(width: 30,),
      Icon(Icons.star,color: Colors.yellow[700],),SizedBox(width: 5,),
      Icon(Icons.star,color: Colors.yellow[700],),SizedBox(width: 5,),
      Icon(Icons.star,color: Colors.yellow[700],),SizedBox(width: 5,),
      Icon(Icons.star,color: Colors.yellow[700],),SizedBox(width: 5,),
      Icon(Icons.star,color: Colors.yellow[700],),SizedBox(width: 5,),
      SizedBox(width: 20,)
    ],
    ),
              SizedBox(height: 30,),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(width: 10,),
                  Text('Account',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(width: 30,),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Text(
                        "   Name",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  ),
                  Text(
                    "Pavithra   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Text(
                        "   Mobile Number",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  ),
                  Text(
                    "+1 99999999   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Text(
                        "   Email",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  ),
                  Text(
                    "hotshotter@gmail.com   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Text(
                        "   Address",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  ),
                  Text(
                    "Kondon,UK   ",
                    style: TextStyle(
                         color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: <Widget>[

                      Text(
                        "   Vehicle Number",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500),
                      ),

                    ],
                  ),
                  Text(
                    "UK 01 2345   ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              SizedBox(height: 30,),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(width: 10,),
                  Text('Documents',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),SizedBox(width: 30,),

                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget>[
                        SizedBox(width: 30,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child:CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/pdf.png'),
                          ) ,
                        ),
                        SizedBox(width: 30,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/pdf.png'),
                          ) ,
                        ),
                        SizedBox(width: 30,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('assets/images/splash.png'),
                          ) ,
                        ),

                      ]
                  )
              ),

                   Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget>[
                        SizedBox(width: 50,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child:Text("licence.pdf",style: TextStyle(fontSize: 10),)
                        ),
                        SizedBox(width: 35,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child:Text("insurance.pdf",style: TextStyle(fontSize: 10),)
                        ),
                        SizedBox(width: 30,),
                        Container(
                          decoration:BoxDecoration(
                              borderRadius:BorderRadius.circular(10),
                              color:Colors.white
                          ),
                          child: Text("vehicle.png",style: TextStyle(fontSize: 10),)
                        ),

                      ]
                  ),

              SizedBox(height: 40,),
              Row(

                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

                  SizedBox(width: 20,),
                  Row(
                      children: <Widget>[

                        Icon(Icons.delete),
                        SizedBox(width: 20,),
                        Text("Delete Account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),)
                      ]
                  )
                ],
              ),

    ]
    ),
        ),
            );

  }}