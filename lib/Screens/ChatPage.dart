import 'package:flutter/material.dart';
import 'package:online_tution/Widgets/chat_model.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tutor Chat'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Chat.dummyData.length,
          itemBuilder: (context, index) {
            Chat chat = Chat.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(height: 12.0,),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage("https://cdn0.iconfinder.com/data/icons/user-pictures/100/matureman1-2-512.png"),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(chat.name),
                      SizedBox(width: 16.0,),
                      Text(chat.datetime, style: TextStyle(fontSize: 12.0),),
                    ],
                  ),
                  subtitle: Text(chat.message),
                  trailing: Icon(Icons.arrow_forward_ios, size: 14.0,),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}