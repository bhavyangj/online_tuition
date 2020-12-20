import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "To-Do LIST",
                      style: TextStyle(
                          fontSize: 18,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[200]
                      ),
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Text("Work", style: TextStyle(fontSize: 50, height: 1.2, fontWeight: FontWeight.bold, color: Colors.blueGrey[700],),),
                        Spacer(),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: (){},
                        )
                      ],
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemBuilder: (context, index){
                          return Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey[200]
                                ),
                                color: index == 1 ? Colors.blueGrey : Colors.transparent
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Make App for UI challange and get chance to win",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: index == 1 ? Colors.white : Colors.grey[800]
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 4,),
                                    index == 1 ? Icon(Icons.check_circle, color: Colors.white,) : Container()
                                  ],
                                ),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text("20 DEC 2020", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: index == 1 ? Colors.white70 : Colors.grey[500]                                     ),),
                                    Spacer(),
                                    index == 1 ? Text("COMPLETED", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12, color: Colors.white),)
                                    : Text("8:30 - 3:00", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: index == 1 ? Colors.white70 : Colors.grey[500]),),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => Divider(height: 16, color: Colors.transparent,),
                        itemCount: 6,
                      ),
                    ),
                    SizedBox(height: 16,),
                    Container(
                      width: double.infinity,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        color: Colors.lightBlue,
                        child: Text(
                          "ADD NEW TASK",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: (){
                          // Navigator.push(context, PageRoute());
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}