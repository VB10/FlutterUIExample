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
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(ScreenUtil.screenWidth / 2,
                      ScreenUtil.instance.setHeight(400)),
                  bottomRight: Radius.elliptical(ScreenUtil.screenWidth / 2,
                      ScreenUtil.instance.setHeight(400))),
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
