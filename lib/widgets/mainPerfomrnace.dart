import 'package:flutter/material.dart';
import 'package:internship_assignment/widgets/performance.dart';
import 'package:internship_assignment/widgets/performanceTextVal.dart';
import 'package:internship_assignment/widgets/performanceValueBar.dart';

import '../main.dart';

class MainPerformance extends StatefulWidget {
  const MainPerformance({Key? key}) : super(key: key);

  @override
  State<MainPerformance> createState() => _MainPerformanceState();
}

class _MainPerformanceState extends State<MainPerformance> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Performance",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                      fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              PerformanceLabel(0),
              PerformanceLabel(1),
              PerformanceLabel(2),
              PerformanceLabel(3),
              PerformanceLabel(4),
              PerformanceLabel(5),
              PerformanceLabel(6),
              PerformanceLabel(7),
            ],
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("", style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              PerformanceBar(ll[0]['ChangePercent'] / 100),
              PerformanceBar(ll[1]['ChangePercent'] / 100),
              PerformanceBar(ll[2]['ChangePercent'] / 100),
              PerformanceBar(ll[3]['ChangePercent'] / 100),
              PerformanceBar(ll[4]['ChangePercent'] / 100),
              PerformanceBar(ll[5]['ChangePercent'] / 100),
              PerformanceBar(ll[6]['ChangePercent'] / 100),
              PerformanceBar(ll[7]['ChangePercent'] / 100),
            ],
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("", style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              PerformanceText(0),
              PerformanceText(1),
              PerformanceText(2),
              PerformanceText(3),
              PerformanceText(4),
              PerformanceText(5),
              PerformanceText(6),
              PerformanceText(7),
            ],
          ),
        ),
        // SizedBox(
        //   width: 20,
        // ),
      ],
    );
  }
}
