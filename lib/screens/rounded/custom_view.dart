import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomView1 extends StatefulWidget {
  @override
  _CustomView1State createState() => _CustomView1State();
}

class _CustomView1State extends State<CustomView1> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance.init(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.centerRight,
                  end: Alignment.topLeft,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 1],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Colors.indigo[800],
                    Colors.indigo[400],
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              border: Border.all(
                  color: Colors.yellow, width: 0, style: BorderStyle.none),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                bottomRight: Radius.circular(150),
              ),
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.1, 0.5, 0.7, 0.9],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Colors.indigo[800],
                  Colors.indigo[700],
                  Colors.indigo[600],
                  Colors.indigo[400],
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
