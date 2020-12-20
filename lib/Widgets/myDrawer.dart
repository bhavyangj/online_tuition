import 'package:flutter/material.dart';
import 'package:online_tution/HomePage.dart';

class MyDrawer extends StatelessWidget {
  final double thickness = 1.0;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.blueAccent,
            child: Column(
              children: [
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  elevation: 8.0,
                  child: Container(
                    height: 160.0,
                    width: 160.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/user.png'),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "Bhavyang Jariwala",
                  style: TextStyle(color: Colors.white, fontSize: 35.0, fontFamily: "Signatra"),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.0,),
          Container(
            padding: EdgeInsets.only(top: 1.0),
            color: Colors.white,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home, color: Colors.blueAccent,),
                  title: Text("Home", style: TextStyle(fontSize: 18.0, color: Colors.blueAccent),),
                  onTap: (){
                    // Route route = MaterialPageRoute(builder: (c) => HomePage());
                    // Navigator.pushReplacement(context, route);
                  },
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
                ListTile(
                  leading: Icon(Icons.calendar_today,),
                  title: Text("Calender", style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
                ListTile(
                  leading: Icon(Icons.file_copy),
                  title: Text("Files", style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
                ListTile(
                  leading: Icon(Icons.work_outline),
                  title: Text("TO-DO", style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
                ListTile(
                  leading: Icon(Icons.article),
                  title: Text("Certificates", style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Logout", style: TextStyle(fontSize: 18.0),),
                  onTap: (){},
                ),
                Divider(height: 8.0,color: Colors.blueGrey, thickness: thickness,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
