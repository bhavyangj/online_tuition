import 'dart:ui' as ui;
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_tution/Screens/ChatPage.dart';
import 'package:online_tution/Screens/ClassPage.dart';
import 'package:online_tution/Screens/Settings.dart';
import 'package:online_tution/Screens/TodoPage.dart';
import 'package:online_tution/Widgets/myDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();

  static List<Widget> _widgetOptions = <Widget>[
    TodoPage(),
    ClassPage(),
    Settings(),
  ];

  void _onItemSelected(int index){
    setState(() {
      _selectedIndex =  index ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Online Tution', style: TextStyle(color: Colors.white, fontSize: 38.0, fontWeight: FontWeight.w800, fontFamily: "Signatra"),),
            actions: [
              Stack(
                children: [
                  IconButton(
                      icon: Icon(Icons.chat_outlined, size: 27.0,),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
                      },
                  ),
                ],
              ),
            ],
          ),
          drawer: MyDrawer(),
          body: Container(
            color: Colors.white,
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 1,
            height: 55.0,
            color: Colors.blueAccent,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.blueAccent,
            items: <Widget>[
              Icon(Icons.article_sharp, size: 25.0, color: Colors.black,),
              Icon(Icons.home_outlined, size: 25.0, color: Colors.black,),
              Icon(Icons.settings_outlined, size: 25.0, color: Colors.black,),
            ],
            animationDuration: Duration(milliseconds: 400),
            animationCurve: Curves.easeIn,
            onTap: _onItemSelected,
          ),
        ),
    );
  }
}



