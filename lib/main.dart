import 'package:battery/battery.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Battery b = Battery();
  int showBatteryLevels = 0;
  late BatteryState state;

  Color COLOR_RED = Colors.red;
  Color COLOR_GREEN = Colors.green;
  Color COLOR_GREY = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    spreadRadius: -5,
                    offset: Offset(4, 4),
                    color: COLOR_GREY
                  ),
                  //    BoxShadow(
                  //   blurRadius: 7,
                  //   spreadRadius: -5,
                  //   offset: Offset(4, 4),
                  //   color: COLOR_GREY
                  // ),
                ]
              ),
              child: SfRadialGauge(
                axes: [
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}


