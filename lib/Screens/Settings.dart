import 'package:flutter/material.dart';
import 'package:online_tution/HomePage.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final double thickness = 1.0;
  bool isSwitched = false;
  var textValue = 'Switch is OFF';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 1.0),
      color: Colors.white,
      child: Column(
        children: [
          ListTile(
            title: Text("Update Profile", style: TextStyle(fontSize: 18.0),),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
          ListTile(
            title: Text("Change Name ( ask admin first )", style: TextStyle(fontSize: 18.0),),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
          ListTile(
            title: Text("Notification settings", style: TextStyle(fontSize: 18.0),),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
          ListTile(
            title: Text("Send email notification", style: TextStyle(fontSize: 18.0),),
            trailing: Switch(
                onChanged: toggleSwitch,
                value: isSwitched,
                activeColor: Colors.blue,
                activeTrackColor: Colors.grey[300],
                inactiveThumbColor: Colors.blue,
                inactiveTrackColor: Colors.grey[300],
            ),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
          ListTile(
            title: Text("Certificates", style: TextStyle(fontSize: 18.0),),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
          ListTile(
            title: Text("Logout", style: TextStyle(fontSize: 18.0),),
            onTap: (){},
          ),
          Divider(height: 8.0,color: Colors.grey, thickness: thickness,),
        ],
      ),
    );
  }
  void toggleSwitch(bool value) {
    if(isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }
}
