import 'dart:async';

import 'package:flutter/material.dart';
import 'package:online_tution/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    displaySplash();
  }
  displaySplash(){
    Timer(Duration(seconds: 5), () async {
        Route route =  MaterialPageRoute(builder: (_) => HomePage());
        Navigator.pushReplacement(context, route);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/image1.png'),
                SizedBox(height: 20,),
                Text(
                  "Online\n\t\t\tTution",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 76.0,
                    fontFamily: 'Signatra',
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
