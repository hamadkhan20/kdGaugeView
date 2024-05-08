import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Guage View (Speed meter)';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          padding: EdgeInsets.all(16),
          child: KdGaugeView(
            minSpeed: 0.0,
            maxSpeed: 180.0,
            speed: 140.0,
            speedTextStyle: TextStyle(
                color: Color(0xFFC41A3B),
                fontSize: 64,
                fontWeight: FontWeight.bold),
            animate: true,
            duration: Duration(seconds: 4),
            subDivisionCircleColors: Color(0xFFC41A3B),
            divisionCircleColors: Color(0xFF1B1F32),
            fractionDigits: 0,
            activeGaugeColor: Color(0xFFC41A3B),
            innerCirclePadding: 32,
            unitOfMeasurementTextStyle: TextStyle(
                color: Color(0xFFC41A3B),
                fontSize: 32,
                fontWeight: FontWeight.bold),
            minMaxTextStyle: TextStyle(
                color: Color(0xFFC41A3B),
                fontSize: 22,
                fontWeight: FontWeight.bold),
            gaugeWidth: 16,
            alertColorArray: [
              Color(0xFF1B1F32),
              Colors.purpleAccent,
              Color(0xFFC41A3B),
            ],
            alertSpeedArray: [40.0, 80.0, 120.0],
          ),
        ),
      ),
    );
  }
}
