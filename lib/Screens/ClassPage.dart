import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class ClassPage extends StatefulWidget {
  @override
  _ClassPageState createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  var items = [
    ClassInfo('Android Development', Color(0xff6DC8F3), Color(0xff73A1F9), 8.45,
        'Prof. John Doe'),
    ClassInfo('Python for Data Science', Color(0xffFFB157), Color(0xffFFA057), 8.45,
        'Prof. John Doe'),
    ClassInfo('Advanced Java', Color(0xffFF5B95), Color(0xffF8556D), 8.45,
        'Prof. John Doe'),
  ];

  final double _borderRadius = 24.0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                          colors: [items[index].startColor, items[index].endColor],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueAccent,
                            blurRadius: 12,
                            offset: Offset(1, 2),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius, items[index].startColor, items[index].endColor),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Image.asset("images/tutor2.png", height: 64, width: 64,),
                            flex: 2,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  items[index].name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Baloo",
                                    fontSize: 28.0,
                                    height: 1.5,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                // Text("l", style: TextStyle(color: Colors.white, fontFamily: "Baloo"),),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Icon(Icons.person, color: Colors.white, size: 16,),
                                    SizedBox(width: 8,),
                                    Flexible(child: Text(items[index].profname, style: TextStyle(color: Colors.white, fontFamily: "Baloo"),),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 28.0,),
                                Text(
                                  "Time: "+ items[index].time.toString(),
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Baloo",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Join Meet", style: TextStyle(fontSize: 16.0),),
                                Icon(Icons.keyboard_arrow_right)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
      );
  }
}


class ClassInfo {
  final String name;
  final String profname;
  final double time;
  final Color startColor;
  final Color endColor;

  ClassInfo(this.name, this.startColor, this.endColor, this.time, this.profname);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
